package portfolio.workout.tracker.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import portfolio.workout.tracker.models.Workout;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface WorkoutRepository extends JpaRepository<Workout, Long> {

    List<Workout> findAllByUser_IdOrderByDate(Long userId);
    List<Workout> findAllByUser_IdAndDateAfter(Long userId, LocalDate dateAfter);
    List<Workout> findAllByUser_IdAndDateBefore(Long userId, LocalDate dateBefore);
}
