package portfolio.workout.tracker.controllers;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;
import portfolio.workout.tracker.dtos.workout.CreateWorkoutDTO;
import portfolio.workout.tracker.dtos.workout.RescheduleWorkoutDTO;
import portfolio.workout.tracker.dtos.workout.ResponseWorkoutDTO;
import portfolio.workout.tracker.mappers.WorkoutMapper;
import portfolio.workout.tracker.models.Workout;
import portfolio.workout.tracker.security.MyUserDetails;
import portfolio.workout.tracker.services.WorkoutService;

@RestController
@RequiredArgsConstructor
@RequestMapping("/workouts")
public class WorkoutController {
    private final WorkoutService workoutService;
    private final WorkoutMapper workoutMapper;

    @GetMapping("/{id}")
    public ResponseEntity<ResponseWorkoutDTO> getWorkout(@AuthenticationPrincipal MyUserDetails userDetails, @PathVariable Long id) {
        String username = userDetails.getUsername();
        Workout workout = workoutService.getWorkoutById(id, username);
        return new ResponseEntity<>(workoutMapper.entityToResponseDTO(workout), HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteUser(@AuthenticationPrincipal MyUserDetails userDetails, @PathVariable Long id) {
        String username = userDetails.getUsername();
        workoutService.deleteWorkoutById(id, username);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @PostMapping()
    public ResponseEntity<ResponseWorkoutDTO> createWorkout(@AuthenticationPrincipal MyUserDetails userDetails, @RequestBody @Valid CreateWorkoutDTO createWorkoutDTO) {
        String username = userDetails.getUsername();
        Workout workout = workoutService.createWorkout(createWorkoutDTO, username);
        return new ResponseEntity<>(workoutMapper.entityToResponseDTO(workout), HttpStatus.CREATED);

    }

    @PatchMapping("/{id}")
    public ResponseEntity<ResponseWorkoutDTO> rescheduleWorkout(@AuthenticationPrincipal MyUserDetails userDetails, @PathVariable Long id, @RequestBody @Valid  RescheduleWorkoutDTO dto) {
        String username = userDetails.getUsername();
        workoutService.rescheduleWorkout(id, dto, username);
        return new ResponseEntity<>(workoutMapper.entityToResponseDTO(workoutService.getWorkoutById(id, username)), HttpStatus.OK);
    }


}
