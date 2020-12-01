package com.packg.school.repos;

import com.packg.school.model.Trainer;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface TrainerRepository extends JpaRepository<Trainer, Integer>{
    
     @Query(value = "SELECT t FROM Trainer t WHERE t.firstname LIKE '%' || :keyword || '%'" + " OR t.lastname LIKE '%' || :keyword || '%'" + " OR t.subjs LIKE '%' || :keyword || '%'")
    public List<Trainer >search(@Param("keyword") String keyword);
    
}
