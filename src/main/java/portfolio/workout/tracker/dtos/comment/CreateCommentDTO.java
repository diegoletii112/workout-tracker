package portfolio.workout.tracker.dtos.comment;

import jakarta.validation.constraints.NotNull;
import lombok.*;

@Getter
@Builder
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CreateCommentDTO {
    @NotNull
    private String content;
}
