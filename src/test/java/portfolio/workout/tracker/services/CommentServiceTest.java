package portfolio.workout.tracker.services;

import lombok.RequiredArgsConstructor;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import portfolio.workout.tracker.dtos.comment.CreateCommentDTO;
import portfolio.workout.tracker.dtos.comment.UpdateContentDTO;
import portfolio.workout.tracker.exceptions.CommentDoesNotBelongToThisWorkoutException;
import portfolio.workout.tracker.exceptions.NonExistentCommentException;
import portfolio.workout.tracker.mappers.CommentMapper;
import portfolio.workout.tracker.models.Comment;
import portfolio.workout.tracker.models.Workout;
import portfolio.workout.tracker.repositories.CommentRepository;

import java.util.Optional;

import static org.mockito.Mockito.*;

@RequiredArgsConstructor
@ExtendWith(MockitoExtension.class)

public class CommentServiceTest {
    @Mock
    private CommentRepository commentRepository;
    @Mock
    private WorkoutService workoutService;
    @Mock
    private CommentMapper commentMapper;
    @InjectMocks
    private CommentService commentService;


    @Test
    void shouldThrowWhenGetCommentAndCommentDoesNotExist() {
        //Arrange
        when(commentRepository.findById(2L)).thenReturn(Optional.empty());
        //Act and assert
        Assertions.assertThrows(NonExistentCommentException.class, () -> commentService.getComment(1L, 2L));
    }

    @Test
    void shouldThrowWhenGetCommentAndCommentDoesNotBelongToWorkout() {
        //Arrange
        Workout workoutA = Workout.builder().id(1L).build();
        Comment comment = Comment.builder().workout(workoutA).id(3L).build();
        when(commentRepository.findById(3L)).thenReturn(Optional.of(comment));
        //Act and assert
        Assertions.assertThrows(CommentDoesNotBelongToThisWorkoutException.class, () -> commentService.getComment(2L, 3L));

    }
    @Test
    void shouldReturnCommentWhenGetCommentAndCommentBelongsToWorkout(){
        //Arrange
        Workout workoutA = Workout.builder().id(1L).build();
        Comment comment = Comment.builder().workout(workoutA).id(3L).build();
        when(commentRepository.findById(3L)).thenReturn(Optional.of(comment));
        //Act
        Comment commentResult = commentService.getComment(1L, 3L);
        //Assert
        verify(commentRepository).findById(3L);
        Assertions.assertEquals(comment, commentResult);
    }
    @Test
    void shouldDeleteCommentWhenDeleteCommentAndCommentBelongsToWorkout(){
        //Arrange
        Workout workoutA = Workout.builder().id(1L).build();
        Comment comment = Comment.builder().workout(workoutA).id(3L).build();
        when(commentRepository.findById(3L)).thenReturn(Optional.of(comment));
        //Act
        commentService.deleteComment(1L, 3L);
        //Assert
        verify(commentRepository, times(1)).delete(comment);
    }
    @Test
    void shouldEditContentWhenEditContentAndCommentBelongsToWorkout(){
        //Arrange
        Workout workoutA = Workout.builder().id(1L).build();
        Comment comment = Comment.builder().workout(workoutA).id(3L).build();
        when(commentRepository.findById(3L)).thenReturn(Optional.of(comment));
        UpdateContentDTO dto = UpdateContentDTO.builder().content("Lalala").build();
        String expected = dto.getContent();
        //Act
        commentService.editContent(1L, 3L, dto);
        //Assert
        String actual = commentService.getComment(1L, 3L).getContent();
        Assertions.assertEquals(expected, actual);
    }
    @Test
    void shouldCreateComment(){
        //Arrange
        Workout workoutA = Workout.builder().id(1L).build();
        CreateCommentDTO commentDTO = CreateCommentDTO.builder().content("AAA").build();
        when(workoutService.getWorkoutById(1L, "user")).thenReturn(workoutA);
        Comment comment = Comment.builder().content("AAA").build();
        when(commentMapper.DTOtoEntity(commentDTO)).thenReturn(comment);
        //Act
        commentService.createComment(1L, commentDTO, "user");
        //Assert
        verify(commentRepository).save(comment);
    }




}

