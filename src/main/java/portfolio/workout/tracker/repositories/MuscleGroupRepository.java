package portfolio.workout.tracker.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import portfolio.workout.tracker.models.MuscleGroup;

public interface MuscleGroupRepository extends JpaRepository<MuscleGroup, Long> {
    java.util.Optional<MuscleGroup> findByName(String name);
}
