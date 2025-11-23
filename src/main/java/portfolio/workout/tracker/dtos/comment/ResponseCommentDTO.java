package portfolio.workout.tracker.dtos.comment;

import lombok.*;

@Getter
@Builder
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ResponseCommentDTO {
    private Long id;
    private String content;
    private Long workoutId;
}
