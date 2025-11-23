package portfolio.workout.tracker.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import portfolio.workout.tracker.models.Comment;

public interface CommentRepository extends JpaRepository<Comment, Long> {

}
