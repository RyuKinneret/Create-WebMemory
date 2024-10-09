package pe.example.repository;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.springframework.stereotype.Component;
import pe.example.entity.Auto;

@Component
public class AutoRepositoryImpl implements AutoRepository {

    private static final Map<Integer, Auto> autos = new HashMap<>();

    static {
        Auto auto1 = new Auto(1001, "Toyota", "Corolla", "Blanco", new BigDecimal("25000.00"), LocalDate.of(2023, 1, 12), 2020, 15000, "Usado", "Gasolina");
        Auto auto2 = new Auto(1002, "Honda", "Civic", "Negro", new BigDecimal("30000.00"), LocalDate.of(2022, 6, 15), 2021, 10000, "Nuevo", "Eléctrico");
        autos.put(auto1.getAuto_id(), auto1);
        autos.put(auto2.getAuto_id(), auto2);
    }

    @Override
    public void insert(Auto auto) {
        Integer newID = autos.size() + 1001;
        auto.setAuto_id(newID);
        autos.put(auto.getAuto_id(), auto);
    }

    @Override
    public void update(Auto auto) {
        autos.put(auto.getAuto_id(), auto);
    }

    @Override
    public void delete(Integer auto_id) {
        autos.remove(auto_id);
    }

    @Override
    public Auto findById(Integer auto_id) {
        return autos.get(auto_id);
    }

    @Override
    public Collection<Auto> findAll() {
        return autos.values();
    }
}

