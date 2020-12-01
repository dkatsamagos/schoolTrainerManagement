package com.packg.school.controller;

import com.packg.school.model.Trainer;
import com.packg.school.service.ResourceNotFoundException;
import com.packg.school.service.TrainerService;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TrainerController {

    @Autowired
    TrainerService trainerService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String listOfTrainers(ModelMap modelMap) {
        List<Trainer> allTrainers = trainerService.fetchAllTrainers();
        modelMap.addAttribute("trainers", allTrainers);
        return "listOfTrainers";
    }

    @RequestMapping(value = "/showAddForm", method = RequestMethod.GET)
    public String showFormForAdd(ModelMap modelMap) {

        modelMap.addAttribute("newTrainer", new Trainer());
        return "addtrainerform";
    }

    @PostMapping("/addTrainer")
    public String insertTrainer(@Valid @ModelAttribute("newTrainer") Trainer trainer, BindingResult bindingResult) {
        
        if(bindingResult.hasErrors()) {
            return "addtrainerform";
        }

        trainerService.saveUpdateTrainer(trainer);
        return "redirect:/";
    }

    @RequestMapping("/search")
    public String search(ModelMap modelMap, @RequestParam("keyword") String keyword) {
        List<Trainer> result = trainerService.search(keyword);
        modelMap = new ModelMap("search");
        modelMap.addAttribute("res", result);

        return "result";
    }
    
    @GetMapping("/delete")
    public String deleteTrainer(@RequestParam("id") int trainerId) throws ResourceNotFoundException {
        trainerService.deleteTrainer(trainerId);
        return "redirect:/";
    }
    
    @GetMapping("/update")
    public String showFormForUpdate(@RequestParam("id") int trainerId, ModelMap modelMap) throws ResourceNotFoundException {
        Trainer tr = trainerService.fetchTrainer(trainerId);

        modelMap.addAttribute("trainer", tr);
        return "updatetrainerform";
    }

}
