package portfolio.workout.tracker.dtos.workout;

import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;
import portfolio.workout.tracker.dtos.comment.CreateCommentDTO;
import portfolio.workout.tracker.dtos.workoutExercise.CreateWorkoutExerciseDTO;

import java.time.LocalDateTime;
import java.util.List;

@Getter
@Setter
@Builder
@AllArgsConstructor
public class CreateWorkoutDTO {
    @DateTimeFormat
    private LocalDateTime date;
    @NotNull
    private List<CreateWorkoutExerciseDTO> exercises;
    private List<CreateCommentDTO> comments;
}
