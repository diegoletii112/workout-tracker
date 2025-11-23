package portfolio.workout.tracker.controllers;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import portfolio.workout.tracker.dtos.exercise.ExerciseDTO;
import portfolio.workout.tracker.dtos.exercise.ExerciseFilterDTO;
import portfolio.workout.tracker.mappers.ExerciseMapper;
import portfolio.workout.tracker.mappers.PageRequestMapper;
import portfolio.workout.tracker.models.Exercise;
import portfolio.workout.tracker.services.ExerciseService;

@RestController
@RequiredArgsConstructor
@RequestMapping("/exercises")
public class ExerciseController {
    private final ExerciseService exerciseService;
    private final ExerciseMapper exerciseMapper;
    private final PageRequestMapper pageRequestMapper;


    @GetMapping("/{id}")
    public ResponseEntity<ExerciseDTO> getExercise(@PathVariable Long id) {
        Exercise exercise = exerciseService.getExerciseById(id);
        return new ResponseEntity<>(exerciseMapper.EntityToDTO(exercise), HttpStatus.OK);
    }
    @GetMapping
    public ResponseEntity<Page<ExerciseDTO>> fetchExercises(@Valid ExerciseFilterDTO filterDTO) {
        Page<Exercise> page = exerciseService.fetchExercises(filterDTO);
        return new ResponseEntity<>(pageRequestMapper.pageToDTO(page), HttpStatus.OK);
    }

}
