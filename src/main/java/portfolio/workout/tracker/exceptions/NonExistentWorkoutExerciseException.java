package portfolio.workout.tracker.exceptions;

public class NonExistentWorkoutExerciseException extends RuntimeException {
    public NonExistentWorkoutExerciseException(String message) {
        super(message);
    }
}
