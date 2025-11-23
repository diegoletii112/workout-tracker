package portfolio.workout.tracker.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import portfolio.workout.tracker.models.WorkoutExercise;

public interface WorkoutExerciseRepository extends JpaRepository<WorkoutExercise, Long> {

}
