package com.jason.schedule.services;

import com.jason.schedule.models.Schedule;
import com.jason.schedule.repositories.ScheduleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

@SuppressWarnings("SpringJavaAutowiredFieldsWarningInspection")
@Service
public class ScheduleService {

    @Autowired
    private ScheduleRepository scheduleRepository;

    public List<Schedule> getAll() {
        return scheduleRepository.findAll();
    }

    public Schedule create(Schedule newSchedule) {
        return scheduleRepository.save(newSchedule);
    }

    public Schedule getById(Long id) {

        return scheduleRepository.findById(id).orElse(null);
    }
    public Schedule update(Schedule editSchedule) {
        return scheduleRepository.save(editSchedule);
    }
    public void deleteById(Long id) {
        scheduleRepository.deleteById(id);
    }
}
