package portfolio.workout.tracker.exceptions;

public class ExerciseAlreadyInWorkoutException extends RuntimeException {
    public ExerciseAlreadyInWorkoutException(String message) {
        super(message);
    }
}
