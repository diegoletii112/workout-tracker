package portfolio.workout.tracker.services;

import lombok.RequiredArgsConstructor;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import portfolio.workout.tracker.dtos.myUser.UserCreateDTO;
import portfolio.workout.tracker.exceptions.NonExistentRoleException;
import portfolio.workout.tracker.exceptions.NonExistentUserException;
import portfolio.workout.tracker.exceptions.TakenUsernameException;
import portfolio.workout.tracker.mappers.MyUserMapper;
import portfolio.workout.tracker.models.MyUser;
import portfolio.workout.tracker.models.Role;
import portfolio.workout.tracker.repositories.MyUserRepository;
import portfolio.workout.tracker.repositories.RoleRepository;

import java.util.Optional;
import java.util.Set;

import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@RequiredArgsConstructor
@ExtendWith(MockitoExtension.class)
public class MyUserServiceTest {
    @Mock
    MyUserRepository myUserRepository;
    @Mock
    RoleRepository roleRepository;
    @Mock
    MyUserMapper mapper;
    @InjectMocks
    MyUserService myUserService;

    @Test
    void shouldReturnUserWhenGetUserByIdAndUserExists() {
        //Arrange
        MyUser user = MyUser.builder().id(1L).username("testuser").build();
        when(myUserRepository.findById(1L)).thenReturn(Optional.of(user));
        //Act
        MyUser result = myUserService.getUserById(1L);
        //Assert
        Assertions.assertEquals(user.getId(), result.getId());
    }

    @Test
    void shouldThrowWhenGetUserByIdAndUserDoesNotExist() {
        //Act and assert
        Assertions.assertThrows(NonExistentUserException.class, () -> myUserService.getUserById(1L));
    }

    @Test
    void shouldReturnUserWhenGetUserByUsernameAndUserExists() {
        //Arrange
        MyUser user = MyUser.builder().id(1L).username("testuser").build();
        when(myUserRepository.findByUsername("testuser")).thenReturn(Optional.of(user));
        //Act
        MyUser result = myUserService.getUserByName("testuser");
        //Assert
        Assertions.assertEquals(user.getUsername(), result.getUsername());
    }

    @Test
    void shouldThrowWhenGetUserByUsernameAndUserDoesNotExist() {
        //Act and assert
        Assertions.assertThrows(NonExistentUserException.class, () -> myUserService.getUserByName("random"));
    }
    @Test
    void shouldDeleteUserWhenDeleteUserAndUserExists(){
        //Arrange
        MyUser user = MyUser.builder().id(1L).username("testuser").build();
        when(myUserRepository.findById(1L)).thenReturn(Optional.of(user));
        //Act
        myUserService.deleteUser(1L);
        //Assert
    }
    @Test
    void shouldValidatePasswordWhenPasswordIsValid(){
        //Arrange
        String password = "Valid1@abc";
        //Act
        boolean result = myUserService.validatePassword(password);
        //Assert
        Assertions.assertTrue(result);
    }
    @Test
    void shouldThrowWhenValidatePasswordAndPasswordIsInvalid(){
        //Arrange
        String password = "invalid";
        //Act
        boolean result = myUserService.validatePassword(password);
        //Assert
        Assertions.assertFalse(result);
    }
    @Test
    void shouldUpdateWhenUpdateUsernameAndUsernameIsNotTaken(){
        //Arrange
        MyUser user = MyUser.builder().id(1L).username("oldname").build();
        when(myUserRepository.findById(1L)).thenReturn(Optional.of(user));
        when(myUserRepository.existsByUsername("newname")).thenReturn(false);
        //Act
        myUserService.updateUsername(1L, "newname");
        //Assert
        Assertions.assertEquals("newname", user.getUsername());
    }
    @Test
    void shouldThrowWhenUpdateUsernameAndUsernameIsTaken(){
        //Arrange
        MyUser user = MyUser.builder().id(1L).username("oldname").build();
        when(myUserRepository.findById(1L)).thenReturn(Optional.of(user));
        when(myUserRepository.existsByUsername("newname")).thenReturn(true);
        //Act and Assert
        Assertions.assertThrows(TakenUsernameException.class, () -> myUserService.updateUsername(1L, "newname"));
    }
    @Test
    void shouldRegisterUserWhenRegisterUserAndUsernameIsNotTakenAndPasswordIsValidAndRoleExists(){
        //Arrange
        when(myUserRepository.existsByUsername("newuser")).thenReturn(false);
        Role role = Role.builder().name("ROLE_USER").build();
        when(roleRepository.findByName("ROLE_USER")).thenReturn(Optional.of(role));
        UserCreateDTO dto = UserCreateDTO.builder()
                .username("newuser")
                .password("Valid1@abc")
                .build();
        MyUser user = MyUser.builder()
                .username("newuser")
                .password("hashedPassword")
                .roles(Set.of(role))
                .build();

        when(mapper.createDTOToUser(dto)).thenReturn(user);
        //Act
         myUserService.registerUser(dto);
        //Assert
        ArgumentCaptor<MyUser> userCaptor = ArgumentCaptor.forClass(MyUser.class);
        verify(myUserRepository).save(userCaptor.capture());
        MyUser savedUser = userCaptor.getValue();
        Assertions.assertEquals("newuser", savedUser.getUsername());
        Assertions.assertEquals("ROLE_USER", savedUser.getRoles().iterator().next().getName());
        Assertions.assertNotEquals("Valid1@abc", savedUser.getPassword());

    }
    @Test
    void shouldThrowWhenRegisterUserAndRoleDoesNotExist(){
        //Arrange
        when(myUserRepository.existsByUsername("newuser")).thenReturn(false);
        when(roleRepository.findByName("ROLE_USER")).thenReturn(Optional.empty());
        UserCreateDTO dto = UserCreateDTO.builder()
                .username("newuser")
                .password("Valid1@abc")
                .build();
        //Act and Assert
        Assertions.assertThrows(NonExistentRoleException.class, () -> myUserService.registerUser(dto));
    }
}

