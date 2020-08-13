package com.diycovid19mask.medmask.entidades;
public class ProvinciaArgentina {
    private String nombre;
    public ProvinciaArgentina(){}
    public ProvinciaArgentina(String nombre){
        this.nombre=nombre;
    }
    @Override public String toString(){ return this.nombre; }
    public String getNombre(){ return nombre; }
    public void setNombre(String nombre){ this.nombre=nombre; }
}