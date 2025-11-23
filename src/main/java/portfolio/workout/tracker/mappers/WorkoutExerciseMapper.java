package portfolio.workout.tracker.mappers;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;
import portfolio.workout.tracker.dtos.workoutExercise.CreateWorkoutExerciseDTO;
import portfolio.workout.tracker.dtos.workoutExercise.ResponseWorkoutExerciseDTO;
import portfolio.workout.tracker.models.Exercise;
import portfolio.workout.tracker.models.WorkoutExercise;
@RequiredArgsConstructor
@Component
public class WorkoutExerciseMapper {
    public WorkoutExercise CreateDTOtoEntity(CreateWorkoutExerciseDTO dto, Exercise exercise) {
        return WorkoutExercise.builder()
                .exercise(exercise)
                .sets(dto.getSets())
                .reps(dto.getReps())
                .weight(dto.getWeight())
                .build();
    }

    public ResponseWorkoutExerciseDTO entityToDTO(WorkoutExercise workoutExercise) {
        return ResponseWorkoutExerciseDTO.builder()
                .workoutExerciseId(workoutExercise.getId())
                .exerciseName(workoutExercise.getExercise().getName())
                .workoutId(workoutExercise.getWorkout().getId())
                .reps(workoutExercise.getReps())
                .sets(workoutExercise.getSets())
                .weight(workoutExercise.getWeight())
                .build();
    }
}
