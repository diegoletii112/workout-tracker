package portfolio.workout.tracker.dtos.workout;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import portfolio.workout.tracker.dtos.comment.ResponseCommentDTO;
import portfolio.workout.tracker.dtos.workoutExercise.ResponseWorkoutExerciseDTO;

import java.time.LocalDateTime;
import java.util.List;

@Getter
@Setter
@Builder
public class ResponseWorkoutDTO {
    private Long workoutId;
    private LocalDateTime date;
    private List<ResponseWorkoutExerciseDTO> exercises;
    private List<ResponseCommentDTO> comments;
}
