package portfolio.workout.tracker.services;

import lombok.RequiredArgsConstructor;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import portfolio.workout.tracker.dtos.comment.CreateCommentDTO;
import portfolio.workout.tracker.dtos.workout.CreateWorkoutDTO;
import portfolio.workout.tracker.dtos.workout.RescheduleWorkoutDTO;
import portfolio.workout.tracker.dtos.workoutExercise.CreateWorkoutExerciseDTO;
import portfolio.workout.tracker.exceptions.NonExistentWorkoutException;
import portfolio.workout.tracker.exceptions.WorkoutDoesNotBelongToUserException;
import portfolio.workout.tracker.mappers.CommentMapper;
import portfolio.workout.tracker.mappers.WorkoutExerciseMapper;
import portfolio.workout.tracker.mappers.WorkoutMapper;
import portfolio.workout.tracker.models.*;
import portfolio.workout.tracker.repositories.ExerciseRepository;
import portfolio.workout.tracker.repositories.WorkoutRepository;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@RequiredArgsConstructor
@ExtendWith(MockitoExtension.class)
public class WorkoutServiceTest {
    @Mock
    private WorkoutRepository workoutRepository;
    @Mock
    private MyUserService myUserService;
    @Mock
    private ExerciseRepository exerciseRepository;
    @Mock
    private WorkoutExerciseMapper workoutExerciseMapper;
    @Mock
    private WorkoutMapper workoutMapper;
    @Mock
    private CommentMapper commentMapper;
    @InjectMocks
    private WorkoutService workoutService;

    @Test
    void shouldGetWorkoutWhenWorkoutExistsAndBelongsToUser() {
        //Arrange
        MyUser user = MyUser.builder().username("Name").build();
        Workout expected = Workout.builder().user(user).id(2L).build();
        when(workoutRepository.findById(2L)).thenReturn(Optional.of(expected));
        //Act
        Workout actual = workoutService.getWorkoutById(2L, "Name");
        //Assert
        Assertions.assertEquals(expected.getId(), actual.getId());
        Assertions.assertEquals(expected.getUser().getUsername(), actual.getUser().getUsername());
    }

    @Test
    void shouldThrowWhenGetWorkoutAndWorkoutDoesNotExist() {
        //Arrange
        when(workoutRepository.findById(2L)).thenReturn(Optional.empty());
        //Act and assert
        Assertions.assertThrows(NonExistentWorkoutException.class, () -> workoutService.getWorkoutById(2L, "user"));
    }

    @Test
    void shouldThrowWhenGetWorkoutAndWorkoutDoesNotBelongToUser() {
        //Arrange
        MyUser user = MyUser
                .builder()
                .username("Name")
                .build();

        Workout workout = Workout.builder()
                .user(user)
                .id(2L)
                .build();

        when(workoutRepository.findById(2L)).thenReturn(Optional.of(workout));
        //Act and assert
        Assertions.assertThrows(WorkoutDoesNotBelongToUserException.class, () -> workoutService.getWorkoutById(2L, "Different name"));
    }

    @Test
    void shouldDeleteWorkoutWhenWorkoutExistsAndBelongsToUser() {
        //Arrange
        MyUser user = MyUser.builder().username("Name").build();
        Workout workout = Workout.builder().user(user).id(2L).build();
        when(workoutRepository.findById(2L)).thenReturn(Optional.of(workout));
        //Act
        workoutService.deleteWorkoutById(2L, "Name");
        //Assert
        verify(workoutRepository).delete(workout);
    }

    @Test
    void shouldRescheduleWorkoutWhenWorkoutExistsAndBelongsToUser() {
        //Arrange
        MyUser user = MyUser.builder().username("Name").build();
        LocalDateTime oldDate = LocalDateTime.of(2025, 12, 10, 10, 30, 35);
        LocalDateTime newDate = LocalDateTime.of(2025, 12, 11, 10, 30, 10);

        Workout workout = Workout
                .builder()
                .user(user)
                .id(2L)
                .date(oldDate)
                .build();

        RescheduleWorkoutDTO dto = RescheduleWorkoutDTO.builder().date(newDate).build();
        when(workoutRepository.findById(2L)).thenReturn(Optional.of(workout));
        //Act
        Workout actualWorkout = workoutService.rescheduleWorkout(2L, dto, "Name");
        //Assert
        LocalDateTime actual = actualWorkout.getDate();


        Assertions.assertEquals("Name", actualWorkout.getUser().getUsername());
        Assertions.assertEquals(2L, actualWorkout.getId());
        Assertions.assertEquals(newDate, actual);
        Assertions.assertNotEquals(oldDate, actualWorkout.getDate());
        verify(workoutRepository).save(Mockito.any());


    }

    @Test
    void shouldCreateWorkout() {
        //Arrange
        MyUser user = MyUser.builder().username("User").build();
        when(myUserService.getUserByName("User"))
                .thenReturn(user);

        CreateWorkoutExerciseDTO exDto = CreateWorkoutExerciseDTO.builder()
                .exerciseId(3L)
                .sets(3)
                .reps(10)
                .weight(100.0)
                .build();
        Exercise exercise = Exercise.builder()
                .id(3L)
                .name("Bench Press")
                .build();

        CreateCommentDTO commentDto = CreateCommentDTO.builder()
                .content("Good session")
                .build();

        CreateWorkoutDTO createWorkoutDTO = CreateWorkoutDTO
                .builder()
                .exercises(List.of(exDto))
                .comments(List.of(commentDto))
                .date(LocalDateTime.of(2025, 11, 12, 10, 30))
                .build();

        Workout workout = Workout
                .builder()
                .date(createWorkoutDTO.getDate())
                .comments(new ArrayList<>())
                .workoutExercises(new ArrayList<>())
                .user(user)
                .build();

        WorkoutExercise workoutExercise = WorkoutExercise.builder().exercise(exercise).sets(3).reps(10).build();
        Comment comment = Comment.builder().content("Good session").build();
        when(workoutMapper.createDTOtoEntity(createWorkoutDTO)).thenReturn(workout);
        when(exerciseRepository.findAllById(List.of(exercise.getId()))).thenReturn(List.of(exercise));
        when(workoutExerciseMapper.CreateDTOtoEntity(exDto, exercise)).thenReturn(workoutExercise);
        when(commentMapper.DTOtoEntity(commentDto)).thenReturn(comment);

        //Act
        Workout created = workoutService.createWorkout(createWorkoutDTO, "User");
        //Assert

        ArgumentCaptor<Workout> captor = ArgumentCaptor.forClass(Workout.class);
        verify(workoutRepository).save(captor.capture());
        Workout capturedWorkout = captor.getValue();
        Assertions.assertEquals(created.getUser().getUsername(), capturedWorkout.getUser().getUsername());
        Assertions.assertEquals(1, created.getWorkoutExercises().size());
        Assertions.assertEquals(1, created.getComments().size());
        Assertions.assertEquals(capturedWorkout, capturedWorkout.getComments().get(0).getWorkout());
        Assertions.assertEquals(capturedWorkout, capturedWorkout.getWorkoutExercises().get(0).getWorkout());
    }

}
