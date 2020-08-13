package com.diycovid19mask.medmask.entidades;
public class Donante {
    private int id;
    private int idUsuario;
    public Donante() { }
    public Donante(int idUsuario) {
        this.id = id;
        this.idUsuario = idUsuario;
    }
    public Donante(int id, int idUsuario) {
        this.id = id;
        this.idUsuario = idUsuario;
    }
    @Override public String toString() { return "Donante{" + "id=" + id + ", idUsuario=" + idUsuario + '}'; }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public int getIdUsuario() {
        return idUsuario;
    }
    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
}