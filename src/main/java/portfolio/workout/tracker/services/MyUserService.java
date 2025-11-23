package portfolio.workout.tracker.services;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import portfolio.workout.tracker.dtos.myUser.UserCreateDTO;
import portfolio.workout.tracker.exceptions.InvalidPasswordException;
import portfolio.workout.tracker.exceptions.NonExistentRoleException;
import portfolio.workout.tracker.exceptions.NonExistentUserException;
import portfolio.workout.tracker.exceptions.TakenUsernameException;
import portfolio.workout.tracker.mappers.MyUserMapper;
import portfolio.workout.tracker.models.MyUser;
import portfolio.workout.tracker.models.Role;
import portfolio.workout.tracker.repositories.MyUserRepository;
import portfolio.workout.tracker.repositories.RoleRepository;

import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
@Transactional
@RequiredArgsConstructor
@Service
public class MyUserService {
    private final MyUserRepository myUserRepository;
    private final MyUserMapper myUserMapper;
    private final RoleRepository roleRepository;
    private final Pattern pattern = Pattern.compile("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}$");

    public void registerUser(UserCreateDTO userCreateDTO) {
        if (myUserRepository.existsByUsername(userCreateDTO.getUsername())) {
            throw new TakenUsernameException("Username is already taken.");
        }
        if(validatePassword(userCreateDTO.getPassword())){
            Role userRole = roleRepository.findByName("ROLE_USER").orElseThrow(() -> new NonExistentRoleException("Such role does not exist."));
            MyUser user = myUserMapper.createDTOToUser(userCreateDTO);
            user.setRoles(Set.of(userRole));
            myUserRepository.save(user);

        }
        else  {
            throw new InvalidPasswordException("Password does not meet the required criteria.");
        }

    }


    public boolean validatePassword(String password) {
        Matcher matcher = pattern.matcher(password);
        return matcher.matches();
    }

    public void deleteUser(Long userId) {
        MyUser user = getUserById(userId);
        myUserRepository.delete(user);
    }

    public MyUser getUserById(Long userId) {
        return myUserRepository.findById(userId).orElseThrow(() -> new NonExistentUserException("User not found"));
    }
    public MyUser getUserByName(String name){
        return myUserRepository.findByUsername(name).orElseThrow(() -> new NonExistentUserException("User not found"));
    }

    public void updateUsername(Long userId, String username) {
        MyUser user = getUserById(userId);
        if (myUserRepository.existsByUsername(username)) {
            throw new TakenUsernameException("Username already exists");
        }
        user.setUsername(username);
        myUserRepository.save(user);
    }


    public List<MyUser> getAllUsers() {
        return myUserRepository.findAll();
    }


}
