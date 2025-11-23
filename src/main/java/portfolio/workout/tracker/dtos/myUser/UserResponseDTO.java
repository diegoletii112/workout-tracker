package portfolio.workout.tracker.dtos.myUser;

import lombok.*;
import portfolio.workout.tracker.models.Role;

import java.time.LocalDateTime;
import java.util.Set;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Builder
public class UserResponseDTO {
    private Long id;
    private String username;
    private Set<Role> roles;
    private LocalDateTime createdAt;
}
