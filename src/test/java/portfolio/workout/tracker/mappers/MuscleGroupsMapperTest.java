package portfolio.workout.tracker.mappers;

import lombok.RequiredArgsConstructor;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import portfolio.workout.tracker.dtos.MuscleGroup.MuscleGroupDTO;
import portfolio.workout.tracker.dtos.exercise.ExerciseFilterDTO;
import portfolio.workout.tracker.models.MuscleGroup;
import portfolio.workout.tracker.repositories.MuscleGroupRepository;

import java.util.List;
import java.util.Optional;
import java.util.Set;

import static org.mockito.Mockito.when;

@RequiredArgsConstructor
@ExtendWith(MockitoExtension.class)
public class MuscleGroupsMapperTest {
    @Mock
    MuscleGroupRepository muscleGroupRepository;
    @InjectMocks
    MuscleGroupsMapper muscleGroupsMapper;
    @Test
    void shouldMapMuscleGroupsFromDTO() {
        //Arrange
        ExerciseFilterDTO exerciseFilterDTO = ExerciseFilterDTO.builder()
                .muscleGroupsNames(List.of("Chest", "Back"))
                .build();
        MuscleGroup muscleGroup = MuscleGroup.builder().name("Chest").build();
        MuscleGroup muscleGroup2 = MuscleGroup.builder().name("Back").build();
        when(muscleGroupRepository.findByName("Chest")).thenReturn(Optional.of(muscleGroup));
        when(muscleGroupRepository.findByName("Back")).thenReturn(Optional.of(muscleGroup2));
        //Act
        Set<MuscleGroup> muscleGroupSet = muscleGroupsMapper.getMuscleGroupsFromDTO(exerciseFilterDTO);
        //Assert
        Assertions.assertEquals(muscleGroupSet, Set.of(muscleGroup, muscleGroup2));

    }
    @Test
    void shouldMapToDTOSet() {
        //Arrange
        MuscleGroup muscleGroup = MuscleGroup.builder().name("Chest").build();
        MuscleGroup muscleGroup2 = MuscleGroup.builder().name("Back").build();
        Set<MuscleGroup> muscleGroups = Set.of(muscleGroup, muscleGroup2);
        //Act
        Set<MuscleGroupDTO> muscleGroupDTOSet = muscleGroupsMapper.toDTOSet(muscleGroups);
        //Assert
        Assertions.assertEquals(2, muscleGroupDTOSet.size());
    }
}
