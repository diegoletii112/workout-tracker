package portfolio.workout.tracker.services;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import portfolio.workout.tracker.dtos.workout.CreateWorkoutDTO;
import portfolio.workout.tracker.dtos.workout.RescheduleWorkoutDTO;
import portfolio.workout.tracker.dtos.workoutExercise.CreateWorkoutExerciseDTO;
import portfolio.workout.tracker.exceptions.NonExistentWorkoutException;
import portfolio.workout.tracker.exceptions.WorkoutDoesNotBelongToUserException;
import portfolio.workout.tracker.mappers.CommentMapper;
import portfolio.workout.tracker.mappers.WorkoutExerciseMapper;
import portfolio.workout.tracker.mappers.WorkoutMapper;
import portfolio.workout.tracker.models.Comment;
import portfolio.workout.tracker.models.Exercise;
import portfolio.workout.tracker.models.Workout;
import portfolio.workout.tracker.models.WorkoutExercise;
import portfolio.workout.tracker.repositories.ExerciseRepository;
import portfolio.workout.tracker.repositories.WorkoutRepository;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Transactional
@Service
@RequiredArgsConstructor
public class WorkoutService {
    private final WorkoutRepository workoutRepository;
    private final MyUserService userService;
    private final WorkoutMapper workoutMapper;
    private final WorkoutExerciseMapper workoutExerciseMapper;
    private final CommentMapper commentMapper;
    private final ExerciseRepository exerciseRepository;


    public Workout getWorkoutById(Long workoutId, String username) {
        Workout workout = workoutRepository.findById(workoutId).orElseThrow(() -> new NonExistentWorkoutException("This workout" +
                "does not exist."));
        if (workout.getUser().getUsername().equals(username)) {
            return workout;
        } else {
            throw new WorkoutDoesNotBelongToUserException("This workout does not belong to this user.");
        }
    }

    public void deleteWorkoutById(Long workoutId, String username) {
        Workout workout = getWorkoutById(workoutId, username);
        workoutRepository.delete(workout);
    }

    public Workout createWorkout(CreateWorkoutDTO dto, String username) {
        Workout workout = workoutMapper.createDTOtoEntity(dto);
        workout.setUser(userService.getUserByName(username));

        List<Long> exerciseIds = dto.getExercises().stream()
                .map(CreateWorkoutExerciseDTO::getExerciseId)
                .toList();
        Map<Long, Exercise> exerciseMap = exerciseRepository.findAllById(exerciseIds).stream()
                .collect(Collectors.toMap(Exercise::getId, ex -> ex));
        List<WorkoutExercise> exercises = dto.getExercises().stream()
                .map(exDto -> {
                    Exercise exercise = exerciseMap.get(exDto.getExerciseId());
                    WorkoutExercise workoutExercise = workoutExerciseMapper.CreateDTOtoEntity(exDto, exercise);
                    workoutExercise.setWorkout(workout);
                    return workoutExercise;
                })
                .toList();
        workout.setWorkoutExercises(exercises);
        if (dto.getComments() != null) {
            List<Comment> comments = dto.getComments().stream()
                    .map(commentDTO -> {
                        Comment comment = commentMapper.DTOtoEntity(commentDTO);
                        comment.setWorkout(workout);
                        return comment;
                    })
                    .toList();
            workout.setComments(comments);
        }


        workoutRepository.save(workout);
        return workout;
    }
    public Workout rescheduleWorkout(Long workoutId, RescheduleWorkoutDTO dto, String username){
        Workout workout = getWorkoutById(workoutId, username);
        workout.setDate(dto.getDate());
        workoutRepository.save(workout);
        return workout;
    }

}
