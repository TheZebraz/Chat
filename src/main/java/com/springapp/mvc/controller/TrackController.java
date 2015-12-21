package com.springapp.mvc.controller;

import com.springapp.mvc.domain.Track;
import com.springapp.mvc.repository.TrackRepository;
import com.springapp.mvc.validation.TrackValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by Aspire on 13.12.2015.
 */
@Controller
public class TrackController {
    private TrackRepository trackRepository;

    private TrackValidator trackValidator;

    @Autowired
    public TrackController(TrackRepository trackRepository, TrackValidator trackValidator){
        this.trackValidator = trackValidator;
        this.trackRepository = trackRepository;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    private String getTracks (Model model){
        List<Track> tracks = this.trackRepository.listAll();

        model.addAttribute("tracks", tracks);
        return "index";
    }

    @RequestMapping(value = "admin", method = RequestMethod.GET)
    private String getTracksInfo (Model model){
        List<Track> tracks = this.trackRepository.listAll();
        model.addAttribute("tracks", tracks);
        return "admin";
    }

    @RequestMapping(value = "photo", method = RequestMethod.GET)
    public String photo(){
        return "photo";
    }

    @RequestMapping(value = "music", method = RequestMethod.GET)
    public String misic(){
        return "music";
    }

    @RequestMapping(value = "video", method = RequestMethod.GET)
    public String video(){
        return "video";
    }

    @RequestMapping(value = "affiche", method = RequestMethod.GET)
    public String affiche(){
        return "affiche";
    }

    @RequestMapping(value = "contacts", method = RequestMethod.GET)
    public String contacts(){
        return "contacts";
    }


    @RequestMapping(value = "addTrack", method = RequestMethod.GET)
    @PreAuthorize("isAuthenticated()")
    public String addTrack(Model model){
        model.addAttribute("track", new Track());
        return "redirect:/admin";
    }

    @RequestMapping(value = "addTrack", method = RequestMethod.POST)
    @PreAuthorize("isAuthenticated()")
    public String addTrack(@ModelAttribute("track") Track track, BindingResult bindingResult){
        this.trackValidator.validate(track, bindingResult);
        if(bindingResult.hasErrors())
        {
            return "redirect:/admin";
        }
        this.trackRepository.addTrack(track);
        return "redirect:/admin";
    }

    @RequestMapping(value = "updateTrack", method = RequestMethod.GET)
    @PreAuthorize("hasRole('admin')")
    public String updateTrack(Model model){
        model.addAttribute("track", new Track());
        return "redirect:/admin";
    }

    @RequestMapping(value = "updateTrack/{id}", method = RequestMethod.POST)
    @PreAuthorize("hasRole('admin')")
    public String updateTrack(@PathVariable Integer id, @ModelAttribute("track") Track track, BindingResult bindingResult){
        this.trackValidator.validate(track, bindingResult);
        if(bindingResult.hasErrors())
        {
            return "redirect:/admin";
        }
        track.setId(id);
        this.trackRepository.updateTrack(track);
        return "redirect:/admin";
    }

    @RequestMapping(value = "deleteTrack/{id}", method = RequestMethod.GET)
    @PreAuthorize("hasRole('admin')")
    public String deleteTrack(@PathVariable Integer id){
        this.trackRepository.removeTrack(id);

        return "redirect:/admin";
    }

}
