package com.diycovid19mask.medmask.entidades;
public class Usuario {
    private int id;
    private String nombre;
    private String apellido;
    private String localidad;
    private String provincia;
    private String pais;
    private String email;
    private String pass;
    public Usuario() {}
    public Usuario(String nombre, String apellido, String localidad, String provincia, String pais, String email, String pass) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.localidad = localidad;
        this.provincia = provincia;
        this.pais = pais;
        this.email = email;
        this.pass = pass;
    }
    public Usuario(String nombre, String apellido, String localidad, String provincia, String pais, String email) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.localidad = localidad;
        this.provincia = provincia;
        this.pais = pais;
        this.email = email;
    }
    public Usuario(int id, String nombre, String apellido, String localidad, String provincia, String pais, String email, String pass) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.localidad = localidad;
        this.provincia = provincia;
        this.pais = pais;
        this.email = email;
        this.pass = pass;
    }
    @Override
    public String toString() {
        return "Armador{" + "id=" + id + ", nombre=" + nombre + ", apellido=" + apellido + ", localidad=" + localidad + ", provincia=" + provincia + ", pais=" + pais + ", email=" + email + ", pass=" + pass + '}';
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getApellido() {
        return apellido;
    }
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }
    public String getLocalidad() {
        return localidad;
    }
    public void setLocalidad(String localidad) {
        this.localidad = localidad;
    }
    public String getProvincia() {
        return provincia;
    }
    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }
    public String getPais() {
        return pais;
    }
    public void setPais(String pais) {
        this.pais = pais;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPass() {
        return pass;
    }
    public void setPass(String pass) {
        this.pass = pass;
    }
}