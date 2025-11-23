package portfolio.workout.tracker.dtos.exercise;

import lombok.*;
import portfolio.workout.tracker.dtos.MuscleGroup.MuscleGroupDTO;

import java.util.Set;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ExerciseDTO {
    private Long id;
    private String name;
    private String description;
    private Set<MuscleGroupDTO> muscleGroups;
}
