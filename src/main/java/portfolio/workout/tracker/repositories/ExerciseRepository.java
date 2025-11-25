package portfolio.workout.tracker.repositories;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import portfolio.workout.tracker.models.Exercise;
import portfolio.workout.tracker.models.MuscleGroup;

import java.util.Set;

public interface ExerciseRepository  extends JpaRepository<Exercise, Long>, JpaSpecificationExecutor<Exercise> {
    Page<Exercise> findDistinctByMuscleGroupsIn(Set<MuscleGroup> muscleGroups, Pageable pageable);
}
