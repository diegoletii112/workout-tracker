package portfolio.workout.tracker.exceptions;

public class ExerciseNotInWorkoutException extends RuntimeException {
    public ExerciseNotInWorkoutException(String message) {
        super(message);
    }
}
