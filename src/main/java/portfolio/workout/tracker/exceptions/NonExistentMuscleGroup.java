package portfolio.workout.tracker.exceptions;

public class NonExistentMuscleGroup extends RuntimeException {
    public NonExistentMuscleGroup(String message) {
        super(message);
    }
}
