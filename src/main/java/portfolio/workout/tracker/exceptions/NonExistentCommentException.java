package portfolio.workout.tracker.exceptions;

public class NonExistentCommentException extends RuntimeException {
    public NonExistentCommentException(String message) {
        super(message);
    }
}
