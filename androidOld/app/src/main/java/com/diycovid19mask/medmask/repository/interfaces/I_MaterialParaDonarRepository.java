package com.diycovid19mask.medmask.repository.interfaces;
import com.diycovid19mask.medmask.entidades.MaterialParaDonar;
import java.util.List;
public interface I_MaterialParaDonarRepository {
    void alta(MaterialParaDonar material_para_donar);
    void baja(MaterialParaDonar material_para_donar);
    void update(MaterialParaDonar material_para_donar);
    List<MaterialParaDonar> all();
}