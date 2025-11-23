package portfolio.workout.tracker.services;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import portfolio.workout.tracker.dtos.exercise.ExerciseFilterDTO;
import portfolio.workout.tracker.exceptions.NonExistentExerciseException;
import portfolio.workout.tracker.mappers.MuscleGroupsMapper;
import portfolio.workout.tracker.mappers.PageRequestMapper;
import portfolio.workout.tracker.models.Exercise;
import portfolio.workout.tracker.models.MuscleGroup;
import portfolio.workout.tracker.repositories.ExerciseRepository;

import java.util.Set;
@Transactional
@Service
@RequiredArgsConstructor
public class ExerciseService {
    private final ExerciseRepository exerciseRepository;
    private final MuscleGroupsMapper muscleGroupsMapper;

    public Exercise getExerciseById(Long exerciseId) {
        return exerciseRepository.findById(exerciseId).orElseThrow(() -> new NonExistentExerciseException("This exercise does not exist."));
    }


    public Page<Exercise> fetchExercises(ExerciseFilterDTO filterDTO) {
        PageRequestMapper mapper = PageRequestMapper.builder().build();
        PageRequest pageRequest = mapper.dtoToPageable(filterDTO);
        if (filterDTO.getMuscleGroupsNames() != null && !filterDTO.getMuscleGroupsNames().isEmpty()) {
            Set<MuscleGroup> muscleGroups = muscleGroupsMapper.getMuscleGroupsFromDTO(filterDTO);
            return exerciseRepository.findExercisesByMuscleGroups(muscleGroups, pageRequest);

        }
        return exerciseRepository.findAll(pageRequest);
    }
}
