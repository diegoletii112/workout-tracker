package portfolio.workout.tracker.mappers;

import lombok.AllArgsConstructor;
import lombok.Builder;
import org.springframework.stereotype.Component;
import portfolio.workout.tracker.dtos.MuscleGroup.MuscleGroupDTO;
import portfolio.workout.tracker.dtos.exercise.ExerciseFilterDTO;
import portfolio.workout.tracker.exceptions.NonExistentMuscleGroup;
import portfolio.workout.tracker.models.MuscleGroup;
import portfolio.workout.tracker.repositories.MuscleGroupRepository;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Component
@AllArgsConstructor
@Builder
public class MuscleGroupsMapper {
    MuscleGroupRepository muscleGroupRepository;

    public Set<MuscleGroup> getMuscleGroupsFromDTO(ExerciseFilterDTO dto) {
        List<String> MuscleGroups = dto.getMuscleGroupsNames();
        Set<MuscleGroup> muscleGroupSet = new HashSet<>();
        for (String name : MuscleGroups) {
            muscleGroupSet.add(muscleGroupRepository.findByName(name).orElseThrow( () -> new NonExistentMuscleGroup("This muscle group does not exist.")));
        }
        return muscleGroupSet;
    }
    public Set<MuscleGroupDTO> toDTOSet(Set<MuscleGroup> muscleGroups) {
        Set<MuscleGroupDTO> muscleGroupDTOSet = new HashSet<>();
        muscleGroups.iterator().forEachRemaining(muscleGroup -> {
            MuscleGroupDTO muscleGroupDTO = new MuscleGroupDTO();
            muscleGroupDTO.setId(muscleGroup.getId());
            muscleGroupDTO.setName(muscleGroup.getName());
            muscleGroupDTOSet.add(muscleGroupDTO);
        });
        return muscleGroupDTOSet;
    }
}
