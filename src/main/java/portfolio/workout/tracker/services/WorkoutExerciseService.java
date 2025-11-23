package portfolio.workout.tracker.services;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;
import portfolio.workout.tracker.dtos.workoutExercise.CreateWorkoutExerciseDTO;
import portfolio.workout.tracker.dtos.workoutExercise.UpdateRepsDTO;
import portfolio.workout.tracker.dtos.workoutExercise.UpdateSetsDTO;
import portfolio.workout.tracker.dtos.workoutExercise.UpdateWeightDTO;
import portfolio.workout.tracker.exceptions.ExerciseNotInWorkoutException;
import portfolio.workout.tracker.exceptions.NonExistentWorkoutExerciseException;
import portfolio.workout.tracker.mappers.WorkoutExerciseMapper;
import portfolio.workout.tracker.models.Exercise;
import portfolio.workout.tracker.models.Workout;
import portfolio.workout.tracker.models.WorkoutExercise;
import portfolio.workout.tracker.repositories.WorkoutExerciseRepository;
@Transactional
@Component
@RequiredArgsConstructor
public class WorkoutExerciseService {
    private final WorkoutExerciseRepository workoutExerciseRepository;
    private final WorkoutExerciseMapper mapper;
    private final WorkoutService workoutService;
    private final ExerciseService exerciseService;

    public WorkoutExercise createWorkoutExercise(CreateWorkoutExerciseDTO dto, Long workoutId, String username) {
        Workout workout = workoutService.getWorkoutById(workoutId, username);
        Exercise exercise = exerciseService.getExerciseById(dto.getExerciseId());
        WorkoutExercise workoutExercise = mapper.CreateDTOtoEntity(dto, exercise);
        workoutExercise.setWorkout(workout);
        workoutExerciseRepository.save(workoutExercise);
        return workoutExercise;
    }

    public void deleteWorkoutExercise(Long workoutExerciseId, Long workoutId) {
        WorkoutExercise workoutExercise = getWorkoutExercise(workoutExerciseId, workoutId);
        workoutExerciseRepository.delete(workoutExercise);
    }

    public WorkoutExercise getWorkoutExercise(Long workoutExerciseId, Long workoutId) {
        WorkoutExercise workoutExercise = workoutExerciseRepository.findById(workoutExerciseId).orElseThrow(() -> new NonExistentWorkoutExerciseException("This workout exercise does not exist."));
        if (workoutExercise.getWorkout().getId().equals(workoutId)) {
            return workoutExercise;
        }
        else {
            throw new ExerciseNotInWorkoutException("This exercise does not belong to this workout.");
        }



    }

    public void updateReps(Long workoutExerciseId, Long workoutId, UpdateRepsDTO dto) {
        WorkoutExercise workoutExercise = getWorkoutExercise(workoutExerciseId, workoutId);
        workoutExercise.setReps(dto.getReps());
        workoutExerciseRepository.save(workoutExercise);
    }

    public void updateSets(Long workoutExerciseId, Long workoutId, UpdateSetsDTO dto) {
        WorkoutExercise workoutExercise = getWorkoutExercise(workoutExerciseId, workoutId);
        workoutExercise.setSets(dto.getSets());
        workoutExerciseRepository.save(workoutExercise);
    }

    public void updateWeight(Long workoutExerciseId, Long workoutId, UpdateWeightDTO dto) {
        WorkoutExercise workoutExercise = getWorkoutExercise(workoutExerciseId, workoutId);
        workoutExercise.setWeight(dto.getWeight());
        workoutExerciseRepository.save(workoutExercise);
    }


}
