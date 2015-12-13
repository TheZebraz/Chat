package com.springapp.mvc.controller;

import com.springapp.mvc.domain.Track;
import com.springapp.mvc.repository.TrackRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by Aspire on 13.12.2015.
 */
@Controller
public class TrackController {
    private TrackRepository trackRepository;

    @Autowired
    public TrackController(TrackRepository trackRepository){
        this.trackRepository = trackRepository;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    private String getTracks (Model model){
        List<Track> tracks = this.trackRepository.listAll();

        model.addAttribute("tracks", tracks);

        return "index";
    }
}
