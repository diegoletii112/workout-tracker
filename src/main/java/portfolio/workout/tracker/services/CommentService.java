package portfolio.workout.tracker.services;


import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import portfolio.workout.tracker.dtos.comment.CreateCommentDTO;
import portfolio.workout.tracker.dtos.comment.UpdateContentDTO;
import portfolio.workout.tracker.exceptions.CommentDoesNotBelongToThisWorkoutException;
import portfolio.workout.tracker.exceptions.NonExistentCommentException;
import portfolio.workout.tracker.mappers.CommentMapper;
import portfolio.workout.tracker.models.Comment;
import portfolio.workout.tracker.models.Workout;
import portfolio.workout.tracker.repositories.CommentRepository;
@Transactional
@Service
@RequiredArgsConstructor
public class CommentService {
    private final CommentMapper commentMapper;
    private final CommentRepository commentRepository;
    private final WorkoutService workoutService;

    public Comment createComment(Long workoutId, CreateCommentDTO dto, String username) {
        Comment comment = commentMapper.DTOtoEntity(dto);
        Workout workout = workoutService.getWorkoutById(workoutId, username);
        comment.setWorkout(workout);
        commentRepository.save(comment);
        return comment;

    }

    public void deleteComment(Long workoutId, Long commentId) {
        Comment comment = getComment(workoutId, commentId);
        commentRepository.delete(comment);
    }

    public void editContent(Long workoutId, Long commentId, UpdateContentDTO dto) {
        Comment comment = getComment(workoutId, commentId);
        comment.setContent(dto.getContent());
        commentRepository.save(comment);
    }


    public Comment getComment(Long workoutId, Long commentId) {
        Comment comment = commentRepository.findById(commentId).orElseThrow(() -> new NonExistentCommentException("This comment does not exist."));
        if (comment.getWorkout().getId().equals(workoutId)) {
            return comment;
        } else {
            throw new CommentDoesNotBelongToThisWorkoutException("This comment does not belong to this workout.");
        }
    }

}
