package pe.example.repository;

import java.util.Collection;
import pe.example.entity.Auto;

public interface AutoRepository {

    void insert(Auto auto);
    void update(Auto auto);
    void delete(Integer auto_id);
    Auto findById(Integer auto_id);
    Collection<Auto> findAll();
}
