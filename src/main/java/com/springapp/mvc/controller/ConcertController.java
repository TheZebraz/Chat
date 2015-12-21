package com.springapp.mvc.controller;

import com.springapp.mvc.domain.Concerts;
import com.springapp.mvc.repository.ConcertRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Aspire on 21.12.2015.
 */
@Controller
public class ConcertController {
    private ConcertRepository concertRepository;

    @Autowired
    public ConcertController(ConcertRepository concertRepository){
        this.concertRepository = concertRepository;
    }


//    @RequestMapping(value = "/concerts", method = RequestMethod.GET)
//    private String getComments (Model model){
//        List<Concert> comments = this.concertRepository.listAll();
//        model.addAttribute("concerts", comments);
//        return "concerts";
//    }

    @RequestMapping(value = "affiche", method = RequestMethod.GET)
      private String getComments (Model model){
        List<Concerts> concertslist = this.concertRepository.listAll();
        model.addAttribute("concertslist", concertslist);
        return "affiche";
    }
    @RequestMapping(value = "concerts", method = RequestMethod.GET)
    private String getConcerts (Model model){
        List<Concerts> concertslist = this.concertRepository.listAll();
        model.addAttribute("concertslist", concertslist);
        return "concerts";
    }

    @RequestMapping(value = "deleteConcert/{id}", method = RequestMethod.GET)
    @PreAuthorize("hasRole('admin')")
    public String deleteTrack(@PathVariable Integer id) {
        this.concertRepository.removeConcert(id);
        return "redirect:/concerts";
    }

    @RequestMapping(value = "addConcert", method = RequestMethod.GET)
    @PreAuthorize("isAuthenticated()")
    public String addConcert(Model model){
        model.addAttribute("concerts", new Concerts());
        return "redirect:/concerts";
    }

    @RequestMapping(value = "addConcert", method = RequestMethod.POST)
    @PreAuthorize("isAuthenticated()")
    public String addConcert(@ModelAttribute("concerts") Concerts concerts, HttpServletRequest request){
        this.concertRepository.addConcert(concerts);
        return "redirect:/concerts";
    }
    @RequestMapping(value = "updateConcert", method = RequestMethod.GET)
    @PreAuthorize("hasRole('admin')")
    public String updateTrack(Model model){
        model.addAttribute("concerts", new Concerts());
        return "redirect:/concerts";
    }

    @RequestMapping(value = "updateConcert/{id}", method = RequestMethod.POST)
    @PreAuthorize("hasRole('admin')")
    public String updateTrack(@PathVariable Integer id, @ModelAttribute("concerts") Concerts concerts) {
        concerts.setId(id);
        this.concertRepository.updateConcert(concerts);
        return "redirect:/concerts";
    }
}
