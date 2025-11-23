package portfolio.workout.tracker.models;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.*;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "EXERCISE")
public class Exercise {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "NAME", nullable = false)
    private String name;

    @Column(name = "DESCRIPTION", columnDefinition = "TEXT")
    private String description;


    @OneToMany(mappedBy = "exercise")
    @JsonIgnore
    @Builder.Default
    private List<WorkoutExercise> workoutExercises = new ArrayList<>();


    @ManyToMany
    @JoinTable(
            name = "EXERCISE_MUSCLE_GROUP",
            joinColumns = @JoinColumn(name = "exercise_id"),
            inverseJoinColumns = @JoinColumn(name = "muscle_group_id")
    )
    @Builder.Default
    private Set<MuscleGroup> muscleGroups = new HashSet<>();
}