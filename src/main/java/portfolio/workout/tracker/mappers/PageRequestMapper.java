package portfolio.workout.tracker.mappers;

import lombok.Builder;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Component;
import portfolio.workout.tracker.dtos.exercise.ExerciseDTO;
import portfolio.workout.tracker.dtos.exercise.ExerciseFilterDTO;
import portfolio.workout.tracker.models.Exercise;


@Builder
@RequiredArgsConstructor
@Component

public class PageRequestMapper {
    private final ExerciseMapper exerciseMapper;
    public PageRequest dtoToPageable(ExerciseFilterDTO dto) {
        Sort sort;
        int page = dto.getPage();
        int size = dto.getSize();
        String sortBy = dto.getSortBy();
        String sortDir = dto.getSortDir();
        if (sortDir != null && sortDir.equalsIgnoreCase("desc")) {
            sort = Sort.by(sortBy).descending();
        } else {
            sort = Sort.by(sortBy).ascending();
        }
        return PageRequest.of(page ,size, sort);
    }
    public Page<ExerciseDTO> pageToDTO(Page<Exercise> page){
        return page.map(exerciseMapper::EntityToDTO);
    }

}
