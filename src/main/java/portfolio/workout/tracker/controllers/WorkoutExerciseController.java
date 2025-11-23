package portfolio.workout.tracker.controllers;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;
import portfolio.workout.tracker.dtos.workoutExercise.*;
import portfolio.workout.tracker.mappers.WorkoutExerciseMapper;
import portfolio.workout.tracker.models.WorkoutExercise;
import portfolio.workout.tracker.security.MyUserDetails;
import portfolio.workout.tracker.services.WorkoutExerciseService;

@RestController
@RequiredArgsConstructor
@RequestMapping("/workouts/{workoutId}/exercises")
public class WorkoutExerciseController {
    private final WorkoutExerciseService workoutExerciseService;
    private final WorkoutExerciseMapper workoutExerciseMapper;

    @GetMapping("/{id}")
    public ResponseEntity<ResponseWorkoutExerciseDTO> getWorkoutExercise(@PathVariable Long workoutId, @PathVariable Long id) {
        ResponseWorkoutExerciseDTO workoutExerciseDTO = workoutExerciseMapper.
                entityToDTO(workoutExerciseService.
                        getWorkoutExercise(workoutId, id));
        return new ResponseEntity<>(workoutExerciseDTO, HttpStatus.OK);


    }
    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteWorkoutExercise(@PathVariable Long workoutId, @PathVariable Long id) {
        workoutExerciseService.deleteWorkoutExercise(workoutId, id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @PostMapping()
    public ResponseEntity<ResponseWorkoutExerciseDTO> createWorkoutExercise(@AuthenticationPrincipal MyUserDetails userDetails, @PathVariable Long workoutId, @RequestBody @Valid CreateWorkoutExerciseDTO workoutExerciseDTO){
        String username = userDetails.getUsername();
        WorkoutExercise workoutExercise = workoutExerciseService.createWorkoutExercise(workoutExerciseDTO, workoutId, username);
        return new ResponseEntity<>(workoutExerciseMapper.entityToDTO(workoutExercise), HttpStatus.OK);

    }
    @PatchMapping("/{id}/sets")
    public ResponseEntity<ResponseWorkoutExerciseDTO> updateWorkoutExerciseSets(@PathVariable Long workoutId, @PathVariable Long id, @RequestBody @Valid UpdateSetsDTO dto){
        WorkoutExercise workoutExercise = workoutExerciseService.getWorkoutExercise(id, workoutId);
        workoutExerciseService.updateSets(id, workoutId, dto);
        return new ResponseEntity<>(workoutExerciseMapper.entityToDTO(workoutExercise), HttpStatus.OK);
    }
    @PatchMapping("/{id}/reps")
    public ResponseEntity<ResponseWorkoutExerciseDTO> updateWorkoutExerciseReps(@PathVariable Long workoutId, @PathVariable Long id, @RequestBody @Valid UpdateRepsDTO dto){
        WorkoutExercise workoutExercise = workoutExerciseService.getWorkoutExercise(id, workoutId);
        workoutExerciseService.updateReps(id, workoutId, dto);
        return new ResponseEntity<>(workoutExerciseMapper.entityToDTO(workoutExercise), HttpStatus.OK);
    }
    @PatchMapping("/{id}/weight")
    public ResponseEntity<ResponseWorkoutExerciseDTO> updateWorkoutExerciseWeight(@PathVariable Long workoutId, @PathVariable Long id, @RequestBody @Valid UpdateWeightDTO dto){
        WorkoutExercise workoutExercise = workoutExerciseService.getWorkoutExercise(id, workoutId);
        workoutExerciseService.updateWeight(id, workoutId, dto);
        return new ResponseEntity<>(workoutExerciseMapper.entityToDTO(workoutExercise), HttpStatus.OK);
    }

}
