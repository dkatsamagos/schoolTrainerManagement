package com.packg.school.service;

import com.packg.school.model.Trainer;
import com.packg.school.repos.TrainerRepository;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TrainerServiceImpl implements TrainerService {

    @Autowired
    TrainerRepository trainerRepository;

    @Override
    @Transactional
    public List<Trainer> fetchAllTrainers() {
        return trainerRepository.findAll();
    }

    @Override
    @Transactional
    public void saveUpdateTrainer(Trainer trainer) {
        trainerRepository.save(trainer);
    }

    @Override
    public List<Trainer> search(String keyword) {
        return trainerRepository.search(keyword);
    }

    @Override
    @Transactional
    public void deleteTrainer(int trainerId) {
        trainerRepository.deleteById(trainerId);
    }

    @Override
    public Trainer fetchTrainer(int trainerId) throws ResourceNotFoundException {
        return trainerRepository.findById(trainerId).orElseThrow(() -> new ResourceNotFoundException(trainerId));
    }

    
}
