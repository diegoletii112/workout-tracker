package portfolio.workout.tracker.exceptions;

public class WorkoutDoesNotBelongToUserException extends RuntimeException {
    public WorkoutDoesNotBelongToUserException(String message) {
        super(message);
    }
}
