package portfolio.workout.tracker.dtos.myUser;

import jakarta.validation.constraints.NotBlank;
import lombok.*;

@AllArgsConstructor
@Getter
@Setter
@Builder
@NoArgsConstructor
public class UserCreateDTO {
    @NotBlank
    private String username;
    @NotBlank
    private String password;
}
