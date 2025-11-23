package portfolio.workout.tracker.mappers;

import lombok.RequiredArgsConstructor;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.security.crypto.password.PasswordEncoder;
import portfolio.workout.tracker.dtos.myUser.UserCreateDTO;
import portfolio.workout.tracker.dtos.myUser.UserResponseDTO;
import portfolio.workout.tracker.models.MyUser;
import portfolio.workout.tracker.models.Role;

import java.time.LocalDateTime;
import java.util.Set;

import static org.mockito.Mockito.when;

@RequiredArgsConstructor
@ExtendWith(MockitoExtension.class)
public class MyUserMapperTest {
    @Mock
    private PasswordEncoder passwordEncoder;
    @InjectMocks
    private MyUserMapper myUserMapper;

    @Test
    void shouldMapDTOtoUser() {
        //Arrange
        when(passwordEncoder.encode("password")).thenReturn("encodedPassword");
        MyUser expectedUser = MyUser.builder()
                .username("username")
                .password("encodedPassword")
                .build();
        UserCreateDTO dto = UserCreateDTO.builder()
                .username("username")
                .password("password")
                .build();
        //Act
        myUserMapper.createDTOToUser(dto);
        //Assert
        Assertions.assertEquals(dto.getUsername(), expectedUser.getUsername());
        Assertions.assertEquals("encodedPassword", expectedUser.getPassword());
    }
    @Test
    void shouldMapUserToResponseDTO() {
        //Arrange
        Role roleUser = Role.builder().name("ROLE_USER").build();
        MyUser user = MyUser.builder()
                .id(1L)
                .username("username")
                .password("EncodedPassword")
                .roles(Set.of(roleUser))
                .createdAt(LocalDateTime.of(2025, 10, 12, 10, 0))
                .build();

        //Act
        UserResponseDTO dto = myUserMapper.userToResponseDTO(user);
        //Assert
        Assertions.assertEquals(user.getId(), dto.getId());
        Assertions.assertEquals(user.getUsername(), dto.getUsername());
        Assertions.assertEquals(user.getCreatedAt(), dto.getCreatedAt());
        Assertions.assertEquals(user.getRoles(), dto.getRoles());
    }
}
