package com.diycovid19mask.medmask.entidades;
import com.diycovid19mask.medmask.enums.Estado_Donacion;
import java.time.LocalDate;
public class Donacion {
private int id;
private int idDonante;
private Estado_Donacion estado;
private LocalDate fechaPublicacion;
private LocalDate fechaDonacion;
private String mensaje;
    public Donacion() {
    }
    public Donacion(int idDonante, Estado_Donacion estado, LocalDate fechaPublicacion, LocalDate fechaDonacion, String mensaje) {
        this.idDonante = idDonante;
        this.estado = estado;
        this.fechaPublicacion = fechaPublicacion;
        this.fechaDonacion = fechaDonacion;
        this.mensaje = mensaje;
    }
    public Donacion(int id, int idDonante, Estado_Donacion estado, LocalDate fechaPublicacion, LocalDate fechaDonacion, String mensaje) {
        this.id = id;
        this.idDonante = idDonante;
        this.estado = estado;
        this.fechaPublicacion = fechaPublicacion;
        this.fechaDonacion = fechaDonacion;
        this.mensaje = mensaje;
    }
    @Override
    public String toString() {
        return "Donacion{" + "id=" + id + ", idDonante=" + idDonante + ", estado=" + estado + ", fechaPublicacion=" + fechaPublicacion + ", fechaDonacion=" + fechaDonacion + ", mensaje=" + mensaje + '}';
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public int getIdDonante() {
        return idDonante;
    }
    public void setIdDonante(int idDonante) {
        this.idDonante = idDonante;
    }
    public Estado_Donacion getEstado() {
        return estado;
    }
    public void setEstado(Estado_Donacion estado) {
        this.estado = estado;
    }
    public LocalDate getFechaPublicacion() {
        return fechaPublicacion;
    }
    public void setFechaPublicacion(LocalDate fechaPublicacion) {
        this.fechaPublicacion = fechaPublicacion;
    }
    public LocalDate getFechaDonacion() {
        return fechaDonacion;
    }
    public void setFechaDonacion(LocalDate fechaDonacion) {
        this.fechaDonacion = fechaDonacion;
    }
    public String getMensaje() {
        return mensaje;
    }
    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }
}