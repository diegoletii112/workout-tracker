package portfolio.workout.tracker.dtos.workoutExercise;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
@Builder
@AllArgsConstructor
@Getter
@Setter
public class UpdateRepsDTO {
    private Integer reps;
}
