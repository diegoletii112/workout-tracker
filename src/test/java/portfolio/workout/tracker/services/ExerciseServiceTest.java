package portfolio.workout.tracker.services;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.data.domain.Pageable;
import portfolio.workout.tracker.dtos.exercise.ExerciseFilterDTO;
import portfolio.workout.tracker.exceptions.NonExistentExerciseException;
import portfolio.workout.tracker.mappers.MuscleGroupsMapper;
import portfolio.workout.tracker.models.Exercise;
import portfolio.workout.tracker.models.MuscleGroup;
import portfolio.workout.tracker.repositories.ExerciseRepository;

import java.util.Optional;
import java.util.Set;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
public class ExerciseServiceTest {
    @Mock
    private ExerciseRepository exerciseRepository;
    @Mock
    private MuscleGroupsMapper muscleGroupsMapper;
    @InjectMocks
    private ExerciseService exerciseService;

    @Test
    void shouldThrowWhenExerciseGetExerciseAndExerciseDoesNotExist() {
        //Arrange
        when(exerciseRepository.findById(1L)).thenReturn(Optional.empty());
        //Act and assert
        Assertions.assertThrows(NonExistentExerciseException.class, () ->
            exerciseService.getExerciseById(1L));
    }
    @Test
    void shouldReturnExerciseWhenGetExerciseAndExerciseExists() {
        //Arrange
        Exercise exercise = Exercise.builder().id(1L).build();
        when(exerciseRepository.findById(1L)).thenReturn(Optional.of(exercise));
        //Act
        Exercise result = exerciseService.getExerciseById(1L);
        //Assert
        Assertions.assertEquals(exercise.getId(), result.getId());
    }
    @Test
    void shouldCallFindAllWithCorrectPageableWhenNoMuscleGroupsProvided() {
        //Arrange
        ExerciseFilterDTO dto = ExerciseFilterDTO.builder()
                .page(0)
                .size(10)
                .sortBy("name")
                .sortDir("ASC")
                .build();
        //act
        exerciseService.fetchExercises(dto);
        //Assert
        verify(exerciseRepository).findAll(any(Pageable.class));

    }
    @Test
    void shouldCallFindExercisesByMuscleGroupsWithCorrectPageableWhenMuscleGroupsProvided() {
        //Arrange
        ExerciseFilterDTO dto = ExerciseFilterDTO.builder()
                .page(0)
                .size(10)
                .sortBy("name")
                .sortDir("ASC")
                .muscleGroupsNames(java.util.List.of("Chest", "Back"))
                .build();
        MuscleGroup chest = MuscleGroup.builder().name("Chest").build();
        MuscleGroup back = MuscleGroup.builder().name("Back").build();
        when(muscleGroupsMapper.getMuscleGroupsFromDTO(dto)).thenReturn(Set.of(chest, back));
        //act
        exerciseService.fetchExercises(dto);
        //Assert
        verify(exerciseRepository).findExercisesByMuscleGroups(any(), any(Pageable.class));

    }


}
