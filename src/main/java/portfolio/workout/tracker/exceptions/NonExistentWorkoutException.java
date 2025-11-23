package portfolio.workout.tracker.exceptions;

public class NonExistentWorkoutException extends RuntimeException {
    public NonExistentWorkoutException(String message) {
        super(message);
    }
}
