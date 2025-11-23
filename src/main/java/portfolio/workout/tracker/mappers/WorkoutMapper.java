package portfolio.workout.tracker.mappers;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;
import portfolio.workout.tracker.dtos.comment.ResponseCommentDTO;
import portfolio.workout.tracker.dtos.workout.CreateWorkoutDTO;
import portfolio.workout.tracker.dtos.workout.ResponseWorkoutDTO;
import portfolio.workout.tracker.dtos.workoutExercise.ResponseWorkoutExerciseDTO;
import portfolio.workout.tracker.models.Workout;

import java.util.List;
import java.util.Optional;

@Component
@RequiredArgsConstructor
public class WorkoutMapper {
    private final CommentMapper commentMapper;
    private final WorkoutExerciseMapper workoutExerciseMapper;

    public Workout createDTOtoEntity(CreateWorkoutDTO dto){
        return Workout.builder().date(dto.getDate()).build();
    }
    public ResponseWorkoutDTO entityToResponseDTO(Workout workout){
        List<ResponseWorkoutExerciseDTO> exercisesDTOs = Optional.ofNullable(workout.getWorkoutExercises()).orElse(List.of()).stream()
                .map(workoutExerciseMapper::entityToDTO)
                .toList();
        List<ResponseCommentDTO> commentDTOs = Optional.of(workout.getComments()).orElse(List.of()).stream()
                .map(commentMapper::entityToDTO)
                .toList();
        return ResponseWorkoutDTO.builder().workoutId(workout.getId()).exercises(exercisesDTOs).date(workout.getDate()).comments(commentDTOs).build();
    }
}
