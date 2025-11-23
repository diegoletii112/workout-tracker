package portfolio.workout.tracker.services;

import lombok.RequiredArgsConstructor;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import portfolio.workout.tracker.dtos.workoutExercise.CreateWorkoutExerciseDTO;
import portfolio.workout.tracker.dtos.workoutExercise.UpdateRepsDTO;
import portfolio.workout.tracker.dtos.workoutExercise.UpdateSetsDTO;
import portfolio.workout.tracker.dtos.workoutExercise.UpdateWeightDTO;
import portfolio.workout.tracker.exceptions.ExerciseNotInWorkoutException;
import portfolio.workout.tracker.exceptions.NonExistentWorkoutExerciseException;
import portfolio.workout.tracker.mappers.WorkoutExerciseMapper;
import portfolio.workout.tracker.models.Exercise;
import portfolio.workout.tracker.models.Workout;
import portfolio.workout.tracker.models.WorkoutExercise;
import portfolio.workout.tracker.repositories.ExerciseRepository;
import portfolio.workout.tracker.repositories.WorkoutExerciseRepository;

import java.util.Optional;

import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@RequiredArgsConstructor
@ExtendWith(MockitoExtension.class)
public class WorkoutExerciseServiceTest {
    @Mock
    WorkoutExerciseRepository workoutExerciseRepository;
    @Mock
    ExerciseRepository exerciseRepository;

    @Mock
    WorkoutExerciseMapper workoutExerciseMapper;
    @Mock
    WorkoutService workoutService;
    @Mock
    ExerciseService exerciseService;

    @InjectMocks
    WorkoutExerciseService workoutExerciseService;

    @Test
    void shouldReturnWorkoutExerciseWhenGetWorkoutExerciseAndWorkoutExerciseBelongsToWorkout(){
        //Arrange
        Workout workout = Workout.builder().id(2L).build();
        WorkoutExercise workoutExercise = WorkoutExercise.builder().id(1L).workout(workout).build();
        when(workoutExerciseRepository.findById(1L)).thenReturn(Optional.of(workoutExercise));
        //Act
        WorkoutExercise result = workoutExerciseService.getWorkoutExercise(1L, 2L);
        //Assert
        Assertions.assertEquals(1L, result.getId());
    }
    @Test
    void shouldThrowWhenGetWorkoutExerciseAndWorkoutExerciseDoesNotExist(){
        //Arrange
        when(workoutExerciseRepository.findById(1L)).thenReturn(Optional.empty());
        //Act and assert
        Assertions.assertThrows(NonExistentWorkoutExerciseException.class, () -> workoutExerciseService.getWorkoutExercise(1L, 2L));
    }
    @Test
    void shouldThrowWhenGetWorkoutExerciseAndWorkoutExerciseDoesNotBelongToWorkout(){
        //Arrange
        Workout workout = Workout.builder().id(2L).build();
        WorkoutExercise workoutExercise = WorkoutExercise.builder().id(1L).workout(workout).build();
        when(workoutExerciseRepository.findById(1L)).thenReturn(Optional.of(workoutExercise));
        //Act and Assert
        Assertions.assertThrows(ExerciseNotInWorkoutException.class, () -> workoutExerciseService.getWorkoutExercise(1L, 3L));
    }
    @Test
    void shouldDeleteWorkoutExerciseWhenDeleteWorkoutExerciseAndWorkoutExerciseBelongsToWorkout(){
        //Arrange
        Workout workout = Workout.builder().id(2L).build();
        WorkoutExercise workoutExercise = WorkoutExercise.builder().id(1L).workout(workout).build();
        when(workoutExerciseRepository.findById(1L)).thenReturn(Optional.of(workoutExercise));
        //Act and Assert
        Assertions.assertDoesNotThrow(() -> workoutExerciseService.deleteWorkoutExercise(1L, 2L));
    }
    @Test
    void shouldCreateWorkoutExerciseWhenCreateWorkoutExercise(){
        //Arrange
        Workout workout = Workout.builder().id(2L).build();
        Exercise exercise = Exercise.builder().id(3L).name("Squat").build();
        CreateWorkoutExerciseDTO dto = CreateWorkoutExerciseDTO.builder()
                .sets(3)
                .reps(10)
                .weight(50.0)
                .exerciseId(3L)
                .build();
        when(workoutExerciseMapper.CreateDTOtoEntity(dto, exercise)).thenReturn(
                WorkoutExercise.builder()
                        .id(1L)
                        .sets(dto.getSets())
                        .reps(dto.getReps())
                        .weight(dto.getWeight())
                        .workout(workout)
                        .exercise(exercise)
                        .build()
        );
        when(workoutService.getWorkoutById(2L,"user" )).thenReturn(workout);
        when(exerciseService.getExerciseById(3L)).thenReturn(exercise);


        //Act
        WorkoutExercise result = workoutExerciseService.createWorkoutExercise(dto, 2L, "user");
        //Assert
        ArgumentCaptor<WorkoutExercise> captor = ArgumentCaptor.forClass(WorkoutExercise.class);
        verify(workoutExerciseRepository).save(captor.capture());
        WorkoutExercise savedWorkoutExercise = captor.getValue();
        verify(workoutExerciseMapper).CreateDTOtoEntity(dto, exercise);
        Assertions.assertNotNull(result);
        Assertions.assertEquals(savedWorkoutExercise.getId(), result.getId());
        Assertions.assertEquals(savedWorkoutExercise.getSets(), result.getSets());
        Assertions.assertEquals(savedWorkoutExercise.getReps(), result.getReps());
    }
    @Test
    void shouldUpdateRepsWhenUpdateReps(){
        //Arrange
        Workout workout = Workout.builder().id(2L).build();
        WorkoutExercise workoutExercise = WorkoutExercise.builder()
                .id(1L)
                .sets(3)
                .reps(10)
                .weight(50.0)
                .workout(workout)
                .build();
        UpdateRepsDTO dto = UpdateRepsDTO.builder()
                .reps(12)
                .build();
        when(workoutExerciseRepository.findById(1L)).thenReturn(Optional.of(workoutExercise));
        //Act
        workoutExerciseService.updateReps(1L, 2L, dto);
        //Assert
        ArgumentCaptor<WorkoutExercise> captor = ArgumentCaptor.forClass(WorkoutExercise.class);
        verify(workoutExerciseRepository).save(captor.capture());
        WorkoutExercise savedWorkoutExercise = captor.getValue();
        Assertions.assertEquals(12, savedWorkoutExercise.getReps());
    }
    @Test
    void shouldUpdateSetsWhenUpdateSets(){
        //Arrange
        Workout workout = Workout.builder().id(2L).build();
        WorkoutExercise workoutExercise = WorkoutExercise.builder()
                .id(1L)
                .sets(3)
                .reps(10)
                .weight(50.0)
                .workout(workout)
                .build();
        UpdateSetsDTO dto = UpdateSetsDTO.builder()
                .sets(4)
                .build();
        when(workoutExerciseRepository.findById(1L)).thenReturn(Optional.of(workoutExercise));
        //Act
        workoutExerciseService.updateSets(1L, 2L, dto);
        //Assert
        ArgumentCaptor<WorkoutExercise> captor = ArgumentCaptor.forClass(WorkoutExercise.class);
        verify(workoutExerciseRepository).save(captor.capture());
        WorkoutExercise savedWorkoutExercise = captor.getValue();
        Assertions.assertEquals(4, savedWorkoutExercise.getSets());
    }
    @Test
    void shouldUpdateWeightWhenUpdateWeight(){
        //Arrange
        Workout workout = Workout.builder().id(2L).build();
        WorkoutExercise workoutExercise = WorkoutExercise.builder()
                .id(1L)
                .sets(3)
                .reps(10)
                .weight(50.0)
                .workout(workout)
                .build();
        UpdateWeightDTO dto = UpdateWeightDTO.builder()
                .weight(43.0)
                .build();
        when(workoutExerciseRepository.findById(1L)).thenReturn(Optional.of(workoutExercise));
        //Act
        workoutExerciseService.updateWeight(1L, 2L, dto);
        //Assert
        ArgumentCaptor<WorkoutExercise> captor = ArgumentCaptor.forClass(WorkoutExercise.class);
        verify(workoutExerciseRepository).save(captor.capture());
        WorkoutExercise savedWorkoutExercise = captor.getValue();
        Assertions.assertEquals(dto.getWeight(), savedWorkoutExercise.getWeight());
    }


}
