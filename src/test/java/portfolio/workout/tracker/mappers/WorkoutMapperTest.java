package portfolio.workout.tracker.mappers;

import lombok.RequiredArgsConstructor;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import portfolio.workout.tracker.dtos.comment.ResponseCommentDTO;
import portfolio.workout.tracker.dtos.workout.CreateWorkoutDTO;
import portfolio.workout.tracker.dtos.workout.ResponseWorkoutDTO;
import portfolio.workout.tracker.dtos.workoutExercise.ResponseWorkoutExerciseDTO;
import portfolio.workout.tracker.models.Comment;
import portfolio.workout.tracker.models.Workout;
import portfolio.workout.tracker.models.WorkoutExercise;

import java.time.LocalDateTime;
import java.util.List;

import static org.mockito.Mockito.when;

@RequiredArgsConstructor
@ExtendWith(MockitoExtension.class)
public class WorkoutMapperTest {
    @Mock
    CommentMapper commentMapper;
    @Mock
    WorkoutExerciseMapper workoutExerciseMapper;
    @InjectMocks
    WorkoutMapper workoutMapper;

    @Test
    void shouldMapCreateWorkoutDTOToEntity() {
        //Arrange
        CreateWorkoutDTO createWorkoutDTO = CreateWorkoutDTO.builder()
                .date(LocalDateTime.of(2025, 10, 11, 12, 0))
                .build();
        Workout workout = Workout.builder()
                .id(1L)
                .date(LocalDateTime.of(2025, 10, 11, 12, 0)).
                build();


        //Act
        Workout mappedWorkout = workoutMapper.createDTOtoEntity(createWorkoutDTO);
        //Assert
        Assertions.assertEquals(mappedWorkout.getDate(), workout.getDate());
    }
    @Test
    void shouldMapWorkoutEntityToResponseDTO() {
        //Arrange
        Comment comment1 = Comment
                .builder()
                .content("Great workout!")
                .build();
        Comment comment2 = Comment
                .builder()
                .content("Felt strong today.")
                .build();
        Comment comment3 = Comment
                .builder()
                .content("Need to improve my form.")
                .build();

        ResponseCommentDTO responseCommentDTO1 = ResponseCommentDTO
                .builder()
                .content("Great workout!")
                .build();
        ResponseCommentDTO responseCommentDTO2 = ResponseCommentDTO
                .builder()
                .content("Felt strong today.")
                .build();
        ResponseCommentDTO responseCommentDTO3 = ResponseCommentDTO
                .builder()
                .content("Need to improve my form.")
                .build();

        WorkoutExercise workoutExercise1 = WorkoutExercise.builder()
                .sets(4)
                .reps(12)
                .weight(50.0)
                .build();
        WorkoutExercise workoutExercise2 = WorkoutExercise.builder()
                .sets(3)
                .reps(10)
                .weight(70.0)
                .build();

        ResponseWorkoutExerciseDTO responseWorkoutExerciseDTO1 = ResponseWorkoutExerciseDTO.builder()
                .sets(4)
                .reps(12)
                .weight(50.0)
                .build();
        ResponseWorkoutExerciseDTO responseWorkoutExerciseDTO2 = ResponseWorkoutExerciseDTO.builder()
                .sets(3)
                .reps(10)
                .weight(70.0)
                .build();

        Workout workout = Workout.builder()
                .date(LocalDateTime.of(2025, 10, 11, 12, 0))
                .comments(List.of(comment1, comment2, comment3))
                .workoutExercises(List.of(workoutExercise1, workoutExercise2))
                .build();


        when(commentMapper.entityToDTO(comment1)).thenReturn(responseCommentDTO1);
        when(commentMapper.entityToDTO(comment2)).thenReturn(responseCommentDTO2);
        when(commentMapper.entityToDTO(comment3)).thenReturn(responseCommentDTO3);
        when(workoutExerciseMapper.entityToDTO(workoutExercise1)).thenReturn(responseWorkoutExerciseDTO1);
        when(workoutExerciseMapper.entityToDTO(workoutExercise2)).thenReturn(responseWorkoutExerciseDTO2);
        //Act
        ResponseWorkoutDTO responseDTO = workoutMapper.entityToResponseDTO(workout);
        //Assert
        Assertions.assertEquals(responseDTO.getWorkoutId(), workout.getId());
        Assertions.assertEquals(responseDTO.getDate(), workout.getDate());
        Assertions.assertEquals(responseDTO.getComments().size(), workout.getComments().size());
        Assertions.assertEquals(responseDTO.getExercises().size(), workout.getWorkoutExercises().size());

    }
}
