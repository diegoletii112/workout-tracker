package portfolio.workout.tracker;

import lombok.AllArgsConstructor;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Profile;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import portfolio.workout.tracker.exceptions.NonExistentRoleException;
import portfolio.workout.tracker.models.MyUser;
import portfolio.workout.tracker.models.Role;
import portfolio.workout.tracker.repositories.MyUserRepository;
import portfolio.workout.tracker.repositories.RoleRepository;

import java.util.Set;


@Component
@Profile("!test")
@AllArgsConstructor
public class DataSeeder implements CommandLineRunner {
    private final RoleRepository roleRepository;
    private final MyUserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    @Override
    public void run(String... args) {
        seedRoles();
        seedUsers();
    }

    public void seedRoles() {
        if (roleRepository.count() == 0) {
            Role adminRole = new Role();
            adminRole.setName("ROLE_ADMIN");
            Role userRole = new Role();
            userRole.setName("ROLE_USER");
            roleRepository.save(adminRole);
            roleRepository.save(userRole);
        }
    }

    public void seedUsers() {
        if (userRepository.count() == 0) {
            Role roleAdmin =
                    roleRepository.findByName("ROLE_ADMIN").orElseThrow(
                            () -> new NonExistentRoleException("This role does not exist."));
            Role roleUser =
                    roleRepository.findByName("ROLE_USER").orElseThrow(
                            () -> new NonExistentRoleException("This role does not exist."));
            MyUser adminUser = MyUser.builder()
                    .roles(Set.of(roleAdmin, roleUser)).
                    username("admin").
                    password(passwordEncoder.encode("admin123")).
                    build();
            MyUser regularUser = MyUser.builder()
                    .roles(Set.of(roleUser))
                    .username("user")
                    .password(passwordEncoder.encode("user123"))
                    .build();
            userRepository.save(adminUser);
            userRepository.save(regularUser);

        }

    }
}

