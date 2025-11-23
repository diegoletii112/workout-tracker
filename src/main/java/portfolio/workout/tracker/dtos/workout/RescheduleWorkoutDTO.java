package portfolio.workout.tracker.dtos.workout;

import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;

@Getter
@Setter
@Builder
@AllArgsConstructor
public class RescheduleWorkoutDTO {
    @NotNull
    @DateTimeFormat
    private LocalDateTime date;
}
