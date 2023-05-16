package com.example.demojavaee;

public class Etudiant {
    private int id;
    private String nom;
    private String email;
    private String classe;


    public Etudiant() {
    }

    public Etudiant(int id, String nom, String email, String classe) {
        this.id = id;
        this.nom = nom;
        this.email = email;
        this.classe = classe;
    }

    public Etudiant(String nom, String email, String classe) {
        this.nom = nom;
        this.email = email;
        this.classe = classe;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getClasse() {
        return classe;
    }

    public void setClasse(String classe) {
        this.classe = classe;
    }

    @Override
    public String toString() {
        return "Etudiant{" +
                "nom=" + nom +
                ", email=" + email +
                ", classe=" + classe +
                '}';
    }
}
