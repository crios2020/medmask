package com.diycovid19mask.medmask.entidades;

public class BarrioCABA {
    private String nombre;
    public BarrioCABA(){}
    public BarrioCABA(String nombre){
        this.nombre=nombre;
    }
    @Override public String toString(){ return this.nombre; }
    public String getNombre(){ return nombre; }
    public void setNombre(String nombre){ this.nombre=nombre; }
}