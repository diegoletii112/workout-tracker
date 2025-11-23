package portfolio.workout.tracker.mappers;
import lombok.RequiredArgsConstructor;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.junit.jupiter.MockitoExtension;
import portfolio.workout.tracker.dtos.comment.CreateCommentDTO;
import portfolio.workout.tracker.dtos.comment.ResponseCommentDTO;
import portfolio.workout.tracker.models.Comment;
import portfolio.workout.tracker.models.Workout;


@RequiredArgsConstructor
@ExtendWith(MockitoExtension.class)

public class CommentMapperTest {
    @InjectMocks
    private CommentMapper commentMapper;

    @Test
    void shouldMapCreateDTOtoEntity() {
        //Arrange
        CreateCommentDTO commentDTO = CreateCommentDTO
                .builder()
                .content("Great workout!")
                .build();


        //Act
        Comment comment = commentMapper.DTOtoEntity(commentDTO);
        //Assertions
        Assertions.assertEquals(comment.getContent(), commentDTO.getContent());
    }
    @Test
    void shouldMapEntityToResponseDTO() {
        //Arrange
        Comment comment = Comment
                .builder()
                .id(2L)
                .content("Great workout!")
                .workout(Workout.builder().id(1L).build())
                .build();

        //Act
        ResponseCommentDTO commentDTO = commentMapper.entityToDTO(comment);
        //Assertions
        Assertions.assertEquals(commentDTO.getId(), comment.getId());
        Assertions.assertEquals(commentDTO.getContent(), comment.getContent());
        Assertions.assertEquals(commentDTO.getWorkoutId(), comment.getWorkout().getId());
    }



}
