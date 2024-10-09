package pe.example.service;

import java.util.Collection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import pe.example.entity.Auto;
import pe.example.repository.AutoRepository;

@Component
public class AutoServiceImpl implements AutoService {

    @Autowired
    @Qualifier("autoRepositoryImpl")
    private AutoRepository repository;

    public AutoServiceImpl() {}

    @Override
    public void insert(Auto auto) {
        repository.insert(auto);
    }

    @Override
    public void update(Auto auto) {
        repository.update(auto);
    }

    @Override
    public void delete(Integer auto_id) {
        repository.delete(auto_id);
    }

    @Override
    public Auto findById(Integer auto_id) {
        return repository.findById(auto_id);
    }

    @Override
    public Collection<Auto> findAll() {
        return repository.findAll();
    }
}
