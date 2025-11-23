package portfolio.workout.tracker.dtos.workoutExercise;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;
import jakarta.validation.constraints.PositiveOrZero;
import lombok.*;

@Builder
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CreateWorkoutExerciseDTO {
    @Positive
    private Integer sets;
    @Positive
    private Integer reps;
    @PositiveOrZero
    private double weight;
    @NotNull
    private Long exerciseId;
    private Long workoutId;
}
