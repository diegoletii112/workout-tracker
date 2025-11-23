package portfolio.workout.tracker.repositories;

import jakarta.validation.constraints.NotBlank;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import portfolio.workout.tracker.models.MyUser;

import java.util.Optional;

@Repository
public interface MyUserRepository extends JpaRepository<MyUser, Long> {
    boolean existsByUsername(@NotBlank String username);
    Optional<MyUser> findByUsername(@NotBlank String username);
}
