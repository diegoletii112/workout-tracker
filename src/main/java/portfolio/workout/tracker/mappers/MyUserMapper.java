package portfolio.workout.tracker.mappers;

import lombok.AllArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import portfolio.workout.tracker.dtos.myUser.UserCreateDTO;
import portfolio.workout.tracker.dtos.myUser.UserResponseDTO;
import portfolio.workout.tracker.models.MyUser;
@Component
@AllArgsConstructor
public class MyUserMapper {
    private PasswordEncoder passwordEncoder;

    public MyUser createDTOToUser(UserCreateDTO dto) {
        return MyUser.builder()
                .username(dto.getUsername())
                .password(passwordEncoder.encode(dto.getPassword()))
                .build();
    }
    public UserResponseDTO userToResponseDTO(MyUser user){
        return UserResponseDTO.builder()
                .id(user.getId())
                .username(user.getUsername())
                .createdAt(user.getCreatedAt())
                .roles(user.getRoles())
                .build();
    }
}
