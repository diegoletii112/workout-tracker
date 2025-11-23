package portfolio.workout.tracker.dtos.exercise;

import jakarta.validation.constraints.Positive;
import jakarta.validation.constraints.PositiveOrZero;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@Builder
@AllArgsConstructor
public class ExerciseFilterDTO {
    @PositiveOrZero
    private int page;
    @Positive
    private int size;
    private String sortBy;
    private String sortDir;
    private List<String> muscleGroupsNames;
}
