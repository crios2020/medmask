package com.diycovid19mask.medmask.entidades;
public class Armador {
private int id;
private int idUsuario;
    public Armador() {
    }
    public Armador(int idUsuario) {
        this.idUsuario = idUsuario;
    }
    public Armador(int id, int idUsuario) {
        this.id = id;
        this.idUsuario = idUsuario;
    }
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
    @Override
    public String toString() {
        return "Armador{" + "id=" + id + ", idUsuario=" + idUsuario + '}';
    }
}
