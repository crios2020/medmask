package com.diycovid19mask.medmask.repository.interfaces;
import com.diycovid19mask.medmask.entidades.Material;
import java.util.List;
public interface I_MaterialRepository {
    int byId(int id);
    List<Material> all();
}