package portfolio.workout.tracker.dtos.workoutExercise;

import lombok.*;

@Builder
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ResponseWorkoutExerciseDTO {
    private Long workoutExerciseId;
    private Integer sets;
    private Integer reps;
    private double weight;
    private String exerciseName;
    private Long workoutId;
}
