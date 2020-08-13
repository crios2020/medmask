package com.diycovid19mask.medmask.repository.interfaces;
import com.diycovid19mask.medmask.entidades.SolicitudDeMaterial;
import java.util.List;
public interface I_SolicitudDeMaterialRepository {
    void alta(SolicitudDeMaterial solicitud_de_material);
    void baja(SolicitudDeMaterial solicitud_de_material);
    void update(SolicitudDeMaterial solicitud_de_material);
    String byEstado(String estado);
    int recibido(int id, int cantidad);
    List<SolicitudDeMaterial> all();
}