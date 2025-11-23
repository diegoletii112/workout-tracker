package portfolio.workout.tracker.mappers;

import lombok.RequiredArgsConstructor;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import portfolio.workout.tracker.dtos.MuscleGroup.MuscleGroupDTO;
import portfolio.workout.tracker.dtos.exercise.ExerciseDTO;
import portfolio.workout.tracker.models.Exercise;
import portfolio.workout.tracker.models.MuscleGroup;

import java.util.Set;

import static org.mockito.Mockito.when;

@RequiredArgsConstructor
@ExtendWith(MockitoExtension.class)
public class ExerciseMapperTest {
    @Mock
    private MuscleGroupsMapper muscleGroupsMapper;
    @InjectMocks
    private ExerciseMapper exerciseMapper;
    @Test
    void shouldMapEntityToDTO() {
        MuscleGroup muscleGroup1 = MuscleGroup
                .builder()
                .id(1L)
                .name("Chest")
                .build();
        MuscleGroup muscleGroup2 = MuscleGroup
                .builder()
                .id(2L)
                .name("Triceps")
                .build();
        MuscleGroupDTO muscleGroupDTO1 = MuscleGroupDTO
                .builder()
                .name("Chest")
                .build();
        MuscleGroupDTO muscleGroupDTO2 = MuscleGroupDTO
                .builder()
                .name("Triceps")
                .build();

        Exercise exercise = Exercise
                .builder()
                .name("Push Up")
                .description("A basic push up exercise.")
                .muscleGroups(Set.of(muscleGroup1, muscleGroup2))
                .build();
        when(muscleGroupsMapper.toDTOSet(exercise.getMuscleGroups()))
                .thenReturn(Set.of(muscleGroupDTO1, muscleGroupDTO2));
        //Act
        ExerciseDTO exerciseDTO = exerciseMapper.EntityToDTO(exercise);
        //Assertions
        Assertions.assertEquals(exerciseDTO.getName(), exercise.getName());
        Assertions.assertEquals(exerciseDTO.getId(), exercise.getId());
        Assertions.assertEquals(exerciseDTO.getDescription(), exercise.getDescription());
        Assertions.assertEquals(exerciseDTO.getMuscleGroups().size(), exercise.getMuscleGroups().size());
    }

}
