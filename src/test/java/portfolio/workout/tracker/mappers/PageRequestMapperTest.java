package portfolio.workout.tracker.mappers;

import lombok.RequiredArgsConstructor;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.data.domain.Pageable;
import portfolio.workout.tracker.dtos.exercise.ExerciseFilterDTO;

@RequiredArgsConstructor
@ExtendWith(MockitoExtension.class)
public class PageRequestMapperTest {
    @Test
    void shouldMapDtoToPageableWithSortDirDescWhenDescInDto(){
        //Arrange
        ExerciseFilterDTO exerciseFilterDTO = ExerciseFilterDTO.builder()
                .page(5)
                .size(10)
                .sortBy("name")
                .sortDir("desc")
                .build();
        PageRequestMapper pageRequestMapper = PageRequestMapper.builder().build();
        //Act
        Pageable pageable = pageRequestMapper.dtoToPageable(exerciseFilterDTO);
        //Assert
        Assertions.assertEquals("name: DESC" ,pageable.getSort().toString());
    }
    @Test
    void shouldMapDtoToPageableWithSortDirAscWhenEmptyInDto(){
        //Arrange
        ExerciseFilterDTO exerciseFilterDTO = ExerciseFilterDTO.builder()
                .page(5)
                .size(10)
                .sortBy("name")
                .build();
        PageRequestMapper pageRequestMapper = PageRequestMapper.builder().build();
        //Act
        Pageable pageable = pageRequestMapper.dtoToPageable(exerciseFilterDTO);
        //Assert
        Assertions.assertEquals("name: ASC" ,pageable.getSort().toString());
    }
    @Test
    void shouldMapDtoToPageableWithSortDirAscWhenAscInDto(){
        //Arrange
        ExerciseFilterDTO exerciseFilterDTO = ExerciseFilterDTO.builder()
                .page(5)
                .size(10)
                .sortBy("name")
                .sortDir("asc")
                .build();
        PageRequestMapper pageRequestMapper = PageRequestMapper.builder().build();
        //Act
        Pageable pageable = pageRequestMapper.dtoToPageable(exerciseFilterDTO);
        //Assert
        Assertions.assertEquals("name: ASC" ,pageable.getSort().toString());
    }
    @Test
    void shouldMapDtoToPageableWithCorrectPageAndSize(){
        //Arrange
        ExerciseFilterDTO exerciseFilterDTO = ExerciseFilterDTO.builder()
                .page(5)
                .size(10)
                .sortBy("name")
                .sortDir("asc")
                .build();
        PageRequestMapper pageRequestMapper = PageRequestMapper.builder().build();
        //Act
        Pageable pageable = pageRequestMapper.dtoToPageable(exerciseFilterDTO);
        //Assert
        Assertions.assertEquals(5 ,pageable.getPageNumber());
        Assertions.assertEquals(10, pageable.getPageSize());
    }





}
