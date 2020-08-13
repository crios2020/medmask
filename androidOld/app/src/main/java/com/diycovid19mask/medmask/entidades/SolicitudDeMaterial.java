package com.diycovid19mask.medmask.entidades;
import com.diycovid19mask.medmask.enums.Estado_SolicitudMaterial;
import java.time.LocalDate;
public class SolicitudDeMaterial {
    private int id;
    private int IdSolicitante;
    private Estado_SolicitudMaterial estado;
    private LocalDate fechaPublicacion;
    private LocalDate fechaRecepcion;
    private int IdMaterial;
    private int cantidad;
    private int cantidadRecibida;
    private String mensaje;
    public SolicitudDeMaterial() {}
    public SolicitudDeMaterial(int IdSolicitante, Estado_SolicitudMaterial estado, LocalDate fechaPublicacion, LocalDate fechaRecepcion, int IdMaterial, int cantidad, int cantidadRecibida, String mensaje) {
        this.IdSolicitante = IdSolicitante;
        this.estado = estado;
        this.fechaPublicacion = fechaPublicacion;
        this.fechaRecepcion = fechaRecepcion;
        this.IdMaterial = IdMaterial;
        this.cantidad = cantidad;
        this.cantidadRecibida = cantidadRecibida;
        this.mensaje = mensaje;
    }
    public SolicitudDeMaterial(int id, int IdSolicitante, Estado_SolicitudMaterial estado, LocalDate fechaPublicacion, LocalDate fechaRecepcion, int IdMaterial, int cantidad, int cantidadRecibida, String mensaje) {
        this.id = id;
        this.IdSolicitante = IdSolicitante;
        this.estado = estado;
        this.fechaPublicacion = fechaPublicacion;
        this.fechaRecepcion = fechaRecepcion;
        this.IdMaterial = IdMaterial;
        this.cantidad = cantidad;
        this.cantidadRecibida = cantidadRecibida;
        this.mensaje = mensaje;
    }
    @Override
    public String toString() {
        return "SolicitudDeMaterial{" + "id=" + id + ", IdSolicitante=" + IdSolicitante + ", estado=" + estado + ", fechaPublicacion=" + fechaPublicacion + ", fechaRecepcion=" + fechaRecepcion + ", IdMaterial=" + IdMaterial + ", cantidad=" + cantidad + ", cantidadRecibida=" + cantidadRecibida + ", mensaje=" + mensaje + '}';
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public int getIdSolicitante() {
        return IdSolicitante;
    }
    public void setIdSolicitante(int IdSolicitante) {
        this.IdSolicitante = IdSolicitante;
    }
    public Estado_SolicitudMaterial getEstado() {
        return estado;
    }
    public void setEstado(Estado_SolicitudMaterial estado) {
        this.estado = estado;
    }
    public LocalDate getFechaPublicacion() {
        return fechaPublicacion;
    }
    public void setFechaPublicacion(LocalDate fechaPublicacion) {
        this.fechaPublicacion = fechaPublicacion;
    }
    public LocalDate getFechaRecepcion() {
        return fechaRecepcion;
    }
    public void setFechaRecepcion(LocalDate fechaRecepcion) {
        this.fechaRecepcion = fechaRecepcion;
    }
    public int getIdMaterial() {
        return IdMaterial;
    }
    public void setIdMaterial(int IdMaterial) {
        this.IdMaterial = IdMaterial;
    }
    public int getCantidad() {
        return cantidad;
    }
    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
    public int getCantidadRecibida() {
        return cantidadRecibida;
    }
    public void setCantidadRecibida(int cantidadRecibida) {
        this.cantidadRecibida = cantidadRecibida;
    }
    public String getMensaje() {
        return mensaje;
    }
    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }
}