package portfolio.workout.tracker.exceptions;

public class NonExistentExerciseException extends RuntimeException {
    public NonExistentExerciseException(String message) {
        super(message);
    }
}
