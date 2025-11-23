package portfolio.workout.tracker.exceptions;

public class CommentDoesNotBelongToThisWorkoutException extends RuntimeException {
    public CommentDoesNotBelongToThisWorkoutException(String message) {
        super(message);
    }
}
