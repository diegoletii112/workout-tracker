package portfolio.workout.tracker.mappers;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;
import portfolio.workout.tracker.dtos.comment.CreateCommentDTO;
import portfolio.workout.tracker.dtos.comment.ResponseCommentDTO;
import portfolio.workout.tracker.models.Comment;


@RequiredArgsConstructor
@Component
public class CommentMapper {

    public Comment DTOtoEntity(CreateCommentDTO dto) {
        return Comment
                .builder()
                .content(dto.getContent())
                .build();
    }

    public ResponseCommentDTO entityToDTO(Comment comment) {
        return ResponseCommentDTO
                .builder()
                .id(comment.getId())
                .content(comment.getContent())
                .workoutId(comment.getWorkout().getId())
                .build();
    }
}
