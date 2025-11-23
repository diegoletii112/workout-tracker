package portfolio.workout.tracker.security;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Component;
import portfolio.workout.tracker.exceptions.NonExistentUserException;
import portfolio.workout.tracker.models.MyUser;
import portfolio.workout.tracker.repositories.MyUserRepository;

@Component
@RequiredArgsConstructor
public class MyUserDetailsService implements UserDetailsService {
    private final MyUserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) {
        MyUser user = userRepository.findByUsername(username).orElseThrow(() ->
                new NonExistentUserException("User not found with username: " + username));
        return new MyUserDetails(user);
    }
}
