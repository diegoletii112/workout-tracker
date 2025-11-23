package portfolio.workout.tracker.controllers;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import portfolio.workout.tracker.dtos.myUser.UserCreateDTO;
import portfolio.workout.tracker.dtos.myUser.UserLoginDTO;
import portfolio.workout.tracker.security.Jwt.JwtService;
import portfolio.workout.tracker.security.MyUserDetails;
import portfolio.workout.tracker.services.MyUserService;

@Slf4j
@RequiredArgsConstructor
@RestController
@RequestMapping("/auth")
public class AuthController {
    private final AuthenticationManager authenticationManager;
    private final MyUserService userService;
    private final JwtService jwtService;


    @PostMapping("/register")
    public ResponseEntity<String> register(@RequestBody UserCreateDTO dto) {
        userService.registerUser(dto);
        return new ResponseEntity<>("User created successfully", HttpStatus.CREATED);
    }

    @PostMapping("/login")
    public String login(@RequestBody UserLoginDTO dto) {

        Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(dto.getUsername(), dto.getPassword())
        );
        MyUserDetails userDetails = (MyUserDetails) authentication.getPrincipal();
        return jwtService.createToken(userDetails);


    }


}
