package portfolio.workout.tracker.controllers;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;
import portfolio.workout.tracker.dtos.comment.CreateCommentDTO;
import portfolio.workout.tracker.dtos.comment.ResponseCommentDTO;
import portfolio.workout.tracker.dtos.comment.UpdateContentDTO;
import portfolio.workout.tracker.mappers.CommentMapper;
import portfolio.workout.tracker.models.Comment;
import portfolio.workout.tracker.security.MyUserDetails;
import portfolio.workout.tracker.services.CommentService;

@RestController
@RequiredArgsConstructor
@RequestMapping("/workouts/{workoutId}/comments")
public class CommentController {
    private final CommentService commentService;
    private final CommentMapper commentMapper;


    @GetMapping("/{id}")
    public ResponseEntity<ResponseCommentDTO> getComment(@PathVariable Long workoutId ,@PathVariable Long id) {
        return new ResponseEntity<>(commentMapper.entityToDTO(commentService.getComment(workoutId, id)), HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteComment(@PathVariable Long workoutId, @PathVariable Long id) {
        commentService.deleteComment(workoutId, id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @PostMapping
    public ResponseEntity<ResponseCommentDTO> createComment(@AuthenticationPrincipal MyUserDetails userDetails, @PathVariable Long workoutId, @RequestBody @Valid CreateCommentDTO commentDTO) {
        String username = userDetails.getUsername();
        Comment comment = commentService.createComment(workoutId, commentDTO, username);
        ResponseCommentDTO dto = commentMapper.entityToDTO(comment);
        return new ResponseEntity<>(dto, HttpStatus.CREATED);
    }

    @PatchMapping("/{id}")
    public ResponseEntity<ResponseCommentDTO> updateCommentContent(@PathVariable Long workoutId, @PathVariable Long id, @RequestBody @Valid UpdateContentDTO dto) {
        commentService.editContent(workoutId, id, dto);
        Comment comment = commentService.getComment(id, workoutId);
        ResponseCommentDTO commentDTO = commentMapper.entityToDTO(comment);
        return new ResponseEntity<>(commentDTO, HttpStatus.OK);
    }

}
