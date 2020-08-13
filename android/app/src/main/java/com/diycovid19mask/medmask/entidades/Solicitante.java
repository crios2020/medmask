package com.diycovid19mask.medmask.entidades;
public class Solicitante {
    private int id;
    private int idUsuario;
    private String institucion;
    public Solicitante() { }
    public Solicitante(int idUsuario, String institucion) {
        this.idUsuario = idUsuario;
        this.institucion = institucion;
    }
    public Solicitante(int id, int idUsuario, String institucion) {
        this.id = id;
        this.idUsuario = idUsuario;
        this.institucion = institucion;
    }
    @Override public String toString() { return "Solicitante{" + "id=" + id + ", idUsuario=" + idUsuario + ", institucion=" + institucion + '}'; }
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
    public String getInstitucion() {
        return institucion;
    }
    public void setInstitucion(String institucion) {
        this.institucion = institucion;
    }
}