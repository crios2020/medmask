package com.diycovid19mask.medmask.entidades;
public class MaterialParaDonar {
    private int id;
    private int idDonacion;
    private int idMaterial;
    private int cantidad;
    public MaterialParaDonar() { }
    public MaterialParaDonar(int idDonacion, int idMaterial, int cantidad) {
        this.idDonacion = idDonacion;
        this.idMaterial = idMaterial;
        this.cantidad = cantidad;
    }
    public MaterialParaDonar(int id, int idDonacion, int idMaterial, int cantidad) {
        this.id = id;
        this.idDonacion = idDonacion;
        this.idMaterial = idMaterial;
        this.cantidad = cantidad;
    }
    @Override public String toString() {
        return "MaterialParaDonar{" + "id=" + id + ", idDonacion=" + idDonacion + ", idMaterial=" + idMaterial + ", cantidad=" + cantidad + '}';
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public int getIdDonacion() {
        return idDonacion;
    }
    public void setIdDonacion(int idDonacion) {
        this.idDonacion = idDonacion;
    }
    public int getIdMaterial() {
        return idMaterial;
    }
    public void setIdMaterial(int idMaterial) {
        this.idMaterial = idMaterial;
    }
    public int getCantidad() {
        return cantidad;
    }
    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
}