package portfolio.workout.tracker.controllers;


import lombok.AllArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import portfolio.workout.tracker.dtos.myUser.UserResponseDTO;
import portfolio.workout.tracker.dtos.myUser.UsernameUpdateDTO;
import portfolio.workout.tracker.mappers.MyUserMapper;
import portfolio.workout.tracker.models.MyUser;
import portfolio.workout.tracker.services.MyUserService;

import java.util.List;

@RestController
@AllArgsConstructor
@RequestMapping("/users")
public class UserController {

    private final MyUserService userService;
    private final MyUserMapper userMapper;

    @GetMapping("/{id}")
    public ResponseEntity<UserResponseDTO> getUser(@PathVariable Long id) {
        MyUser user = userService.getUserById(id);
        return new ResponseEntity<>(userMapper.userToResponseDTO(user), HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteUser(@PathVariable Long id) {
        userService.deleteUser(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @PatchMapping("/{id}")
    public ResponseEntity<String> updateUsername(@PathVariable Long id, @RequestBody UsernameUpdateDTO dto) {
        userService.updateUsername(id, dto.getUsername());
        return new ResponseEntity<>(HttpStatus.OK);
    }


    @GetMapping("/all")
    public ResponseEntity<List<UserResponseDTO>> getAllUsers() {
        List<UserResponseDTO> list = userService.getAllUsers().stream().map(userMapper::userToResponseDTO).toList();
        return new ResponseEntity<>(list, HttpStatus.OK);


    }

}
