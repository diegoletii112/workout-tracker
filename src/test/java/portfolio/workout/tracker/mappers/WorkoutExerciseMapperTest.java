package portfolio.workout.tracker.mappers;

import lombok.RequiredArgsConstructor;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.junit.jupiter.MockitoExtension;
import portfolio.workout.tracker.dtos.workoutExercise.CreateWorkoutExerciseDTO;
import portfolio.workout.tracker.dtos.workoutExercise.ResponseWorkoutExerciseDTO;
import portfolio.workout.tracker.models.Exercise;
import portfolio.workout.tracker.models.Workout;
import portfolio.workout.tracker.models.WorkoutExercise;




@RequiredArgsConstructor
@ExtendWith(MockitoExtension.class)
public class WorkoutExerciseMapperTest {

    @InjectMocks
    WorkoutExerciseMapper workoutExerciseMapper;
    @Test
    void ShouldMapCreateDtoToEntity(){
        //Arrange
        Exercise exercise = Exercise.builder().id(1L).name("NAME").build();
        CreateWorkoutExerciseDTO dto = CreateWorkoutExerciseDTO.builder()
                .exerciseId(1L)
                .sets(3)
                .reps(10)
                .weight(50.0)
                .build();

        //Act
        WorkoutExercise workoutExercise = workoutExerciseMapper.CreateDTOtoEntity(dto, exercise);
        //Assert
        Assertions.assertEquals(workoutExercise.getExercise().getId(), exercise.getId());
        Assertions.assertEquals(workoutExercise.getSets(), dto.getSets());
        Assertions.assertEquals(workoutExercise.getReps(), dto.getReps());
        Assertions.assertEquals(workoutExercise.getWeight(), dto.getWeight());
    }
    @Test
    void ShouldMapEntityToResponseDto(){
        //Arrange
        Exercise exercise = Exercise.builder().id(1L).name("NAME").build();
        Workout workout = Workout.builder().id(2L).build();
        WorkoutExercise workoutExercise = WorkoutExercise.builder()
                .exercise(exercise)
                .workout(workout)
                .sets(3)
                .reps(10)
                .weight(50.0)
                .build();
        //Act
        ResponseWorkoutExerciseDTO dto = workoutExerciseMapper.entityToDTO(workoutExercise);
        //Assert
        Assertions.assertEquals(dto.getWorkoutExerciseId(), workoutExercise.getId());
        Assertions.assertEquals(dto.getExerciseName(), exercise.getName());
        Assertions.assertEquals(dto.getWorkoutId(), workout.getId());
        Assertions.assertEquals(dto.getSets(), workoutExercise.getSets());
        Assertions.assertEquals(dto.getReps(), workoutExercise.getReps());
        Assertions.assertEquals(dto.getWeight(), workoutExercise.getWeight());
    }
}
