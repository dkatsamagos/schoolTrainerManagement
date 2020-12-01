package com.packg.school.service;

import com.packg.school.model.Trainer;
import java.util.List;

/**
 *
 * @author dkats
 */
public interface TrainerService {

    public List<Trainer> search(String keyword);

    public List<Trainer> fetchAllTrainers();

    public void saveUpdateTrainer(Trainer trainer);

    public Trainer fetchTrainer(int trainerId) throws ResourceNotFoundException;

    public void deleteTrainer(int trainerId) throws ResourceNotFoundException;
    
    
}
