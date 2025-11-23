package portfolio.workout.tracker.mappers;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;
import portfolio.workout.tracker.dtos.exercise.ExerciseDTO;
import portfolio.workout.tracker.models.Exercise;

@RequiredArgsConstructor
@Component
public class ExerciseMapper {
    private final MuscleGroupsMapper muscleGroupsMapper;


    public ExerciseDTO EntityToDTO(Exercise exercise)  {
        return ExerciseDTO.builder()
                .id(exercise.getId())
                .name(exercise.getName())
                .description(exercise.getDescription())
                .muscleGroups(muscleGroupsMapper.toDTOSet(exercise.getMuscleGroups()))
                .build();

    }

}
