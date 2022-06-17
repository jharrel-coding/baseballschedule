package com.jason.schedule.controllers;

import com.jason.schedule.models.Schedule;
import com.jason.schedule.services.ScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@SuppressWarnings("SpringJavaAutowiredFieldsWarningInspection")
@Controller
public class scheduleController {

    @Autowired
    private ScheduleService scheduleService;

    @GetMapping("/")
    public String schedules(Model model) {
        model.addAttribute("allSchedules", scheduleService.getAll());
        return "Schedule.jsp";
    }

    @GetMapping("/schedules/new")
    public String newSchedule(@ModelAttribute("newSchedule")Schedule newSchedule, Model model) {
        return "newSchedule.jsp";
    }

    @PostMapping("/schedules/create")
    public String createSchedule(@Valid @ModelAttribute("newSchedule") Schedule newSchedule, BindingResult result) {

        if(result.hasErrors()) {
            return "newSchedule.jsp";
        }

        scheduleService.create(newSchedule);


        return "redirect:/";
    }

    @GetMapping("/schedules/{id}")
    public String profile(@PathVariable Long id, Model model) {
        model.addAttribute("schedule", scheduleService.getById(id));

        return "gameInfo.jsp";
    }

    // rendering the update page
    @GetMapping("/schedules/{id}/edit")
    public String editSchedule(@PathVariable Long id, @ModelAttribute("editSchedule") Schedule editSchedule, Model model) {
        model.addAttribute("schedule", scheduleService.getById(id));


        return "editSchedule.jsp";
    }
    @PutMapping("/schedules/{id}/update")
    public String updateSchedule(@Valid @ModelAttribute("editSchedule")Schedule editSchedule, BindingResult result, Model model) {

        if(result.hasErrors()) {
            model.addAttribute(editSchedule);
            return "editSchedule.jsp";
        }
        scheduleService.update(editSchedule);
        return "redirect:/";

    }

    @DeleteMapping("/schedules/{id}/destroy")
    public String destroySchedule(@PathVariable Long id) {

        scheduleService.deleteById(id);

        return "redirect:/";
    }



}
