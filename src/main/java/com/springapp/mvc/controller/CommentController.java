package com.springapp.mvc.controller;

import com.springapp.mvc.domain.Comment;
import com.springapp.mvc.repository.CommentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;


@Controller
public class CommentController {
    private CommentRepository commentRepository;

    @Autowired
    public CommentController(CommentRepository commentRepository){
        this.commentRepository = commentRepository;
    }


    @RequestMapping(value = "/comments", method = RequestMethod.GET)
    private String getComments (Model model){
        List<Comment> comments = this.commentRepository.listAllComment();
        model.addAttribute("comments", comments);
        return "comments";
    }

    @RequestMapping(value = "deleteComment/{id}", method = RequestMethod.GET)
    @PreAuthorize("hasRole('admin')")
    public String deleteTrack(@PathVariable Integer id){
        this.commentRepository.removeComment(id);
        return "redirect:/comments";
    }

    @RequestMapping(value = "createComment", method = RequestMethod.GET)
    @PreAuthorize("isAuthenticated()")
    public String createComment(Model model){
        model.addAttribute("comment", new Comment());
        return "redirect:/";
    }

    @RequestMapping(value = "createComment/{name}", method = RequestMethod.POST)
    @PreAuthorize("isAuthenticated()")
    public String addTrack(@PathVariable String name, @ModelAttribute("comment") Comment comment){
        comment.setTrackName(name);
        this.commentRepository.addComment(comment);
        return "redirect:/";
    }
}
