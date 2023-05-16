package com.example.demojavaee;
import java.io.*;
import java.sql.SQLException;
import java.util.List;
import java.util.Objects;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.naming.NamingException;

@WebServlet(value = "/etudiant" , name = "etudiant")
public class EtudiantServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final EtudiantDao etudiantDAO;

    public EtudiantServlet() {
        super();
        try {
            etudiantDAO = new EtudiantDao();
        } catch (NamingException | SQLException e) {
            throw new RuntimeException(e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action != null) {
            switch (action) {
                case "new":
                    showNewForm(request, response);
                    break;
                case "edit":
                    try {
                        showEditForm(request, response);
                    } catch (SQLException e) {
                        throw new RuntimeException(e);
                    }
                    break;
                case "delete":
                    try {
                        deleteEtudiant(request, response);
                    } catch (SQLException e) {
                        throw new RuntimeException(e);
                    }
                    break;
                default:
                    try {
                        listEtudiant(request, response);
                    } catch (SQLException e) {
                        throw new RuntimeException(e);
                    }
                    break;
            }
        } else {
            try {
                listEtudiant(request, response);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        String nom = request.getParameter("nom");
        String email = request.getParameter("email");
        String classe = request.getParameter("classe");
        Etudiant etudiant = new Etudiant(nom, email, classe);
        if (id == null || id.isEmpty() && Objects.equals(request.getParameter("action"), "new")) {
            try {
                etudiantDAO.addEtudiant(etudiant);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        } else {
            etudiant.setId(Integer.parseInt(id));
            try {
                etudiantDAO.updateEtudiant(etudiant);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        response.sendRedirect(request.getContextPath() + "/etudiant");
    }

    private void listEtudiant(@org.jetbrains.annotations.NotNull HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        List<Etudiant> etudiants = etudiantDAO.getAllEtudiants();
        request.setAttribute("etudiants", etudiants);
        request.getRequestDispatcher("liste.jsp").forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("Ajout.jsp").forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        System.out.print(id);
        Etudiant etudiant = etudiantDAO.getEtudiantById(id);
        if (etudiant != null){
            System.out.println(etudiant.getClasse());
            System.out.println(etudiant);
            request.setAttribute("etudiant", etudiant);
            request.getRequestDispatcher("Edit.jsp").forward(request, response);
        }else
            System.out.println("Etudiant nul");
    }

    private void deleteEtudiant(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        long id = Long.parseLong(request.getParameter("id"));
        etudiantDAO.deleteEtudiant(Math.toIntExact(id));
        response.sendRedirect(request.getContextPath() + "/etudiant");
    }
}
