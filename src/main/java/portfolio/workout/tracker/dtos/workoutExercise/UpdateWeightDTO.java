package portfolio.workout.tracker.dtos.workoutExercise;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
@Builder
@AllArgsConstructor
public class UpdateWeightDTO {
    private double weight;
}
