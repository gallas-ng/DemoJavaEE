package com.example.demojavaee;



import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EtudiantDao {

    Context ctx;

    {
        try {
            ctx = new InitialContext();
        } catch (NamingException e) {
            throw new RuntimeException(e);
        }
    }

    DataSource ds = (DataSource)ctx.lookup("MySQL");
    Connection conn = ds.getConnection();

    public EtudiantDao() throws NamingException, SQLException {
        Connection connection = conn;
    }

    // Ajouter un étudiant à la base de données
    public void addEtudiant(Etudiant etudiant) throws SQLException {
        String sql = "INSERT INTO etudiant (nom, email, classe) VALUES (?, ?, ?)";
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, etudiant.getNom());
        statement.setString(2, etudiant.getEmail());
        statement.setString(3, etudiant.getClasse());
        statement.executeUpdate();
        statement.close();
    }

    // Modifier les informations d'un étudiant dans la base de données
    public void updateEtudiant(Etudiant etudiant) throws SQLException {
        String sql = "UPDATE etudiant SET nom=?, email=?, classe=? WHERE id=?";
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, etudiant.getNom());
        statement.setString(2, etudiant.getEmail());
        statement.setString(3, etudiant.getClasse());
        statement.setInt(4, etudiant.getId());
        statement.executeUpdate();
        statement.close();
    }

    // Supprimer un étudiant de la base de données
    public void deleteEtudiant(int id) throws SQLException {
        String sql = "DELETE FROM etudiant WHERE id=?";
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setInt(1, id);
        statement.executeUpdate();
        statement.close();
    }

    // Récupérer la liste de tous les étudiants dans la base de données
    public List<Etudiant> getAllEtudiants() throws SQLException {
        List<Etudiant> etudiants = new ArrayList<>();
        String sql = "SELECT * FROM etudiant";
        PreparedStatement statement = conn.prepareStatement(sql);
        ResultSet resultSet = statement.executeQuery();
        while (resultSet.next()) {
            int id = resultSet.getInt("id");
            String nom = resultSet.getString("nom");
            String email = resultSet.getString("email");
            String classe = resultSet.getString("classe");
            Etudiant etudiant = new Etudiant(id, nom, email, classe);
            etudiants.add(etudiant);
        }
        resultSet.close();
        statement.close();
        return etudiants;
    }

    // Récupérer un étudiant de la base de données par son ID
    public Etudiant getEtudiantById(int id) throws SQLException {
        String sql = "SELECT * FROM etudiant WHERE id=?";
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setInt(1, id);
        ResultSet resultSet = statement.executeQuery();
        Etudiant etudiant = new Etudiant();
        if (resultSet.next()) {
            String nom = resultSet.getString("nom");
            String email = resultSet.getString("email");
            String classe = resultSet.getString("classe");

            etudiant.setId(id);
            etudiant.setNom(nom);
            etudiant.setEmail(email);
            etudiant.setClasse(classe);
        }
        resultSet.close();
        statement.close();
        return etudiant;
    }

}

