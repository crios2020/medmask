package com.diycovid19mask.medmask.entidades;
public class PartidoBuenosAires {
    private String nombre;
    public PartidoBuenosAires(){}
    public PartidoBuenosAires(String nombre){
        this.nombre=nombre;
    }
    @Override public String toString(){ return this.nombre; }
    public String getNombre(){ return nombre; }
    public void setNombre(String nombre){ this.nombre=nombre; }
}