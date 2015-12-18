package com.springapp.mvc.repository;

import com.springapp.mvc.domain.Track;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Aspire on 13.12.2015.
 */
@Repository
@Transactional
public class TrackRepository {

    @Autowired
    private SessionFactory sessionFactory;

    public void addTrack(Track track) {
        this.sessionFactory.getCurrentSession().save(track);
    }

    public List<Track> listAll() {
        return this.sessionFactory.getCurrentSession().createQuery("from Track").list();
    }

    public void removeTrack(Integer id) {
        Track contact = (Track) this.sessionFactory.getCurrentSession().load(Track.class, id);
        if (contact != null) {
            this.sessionFactory.getCurrentSession().delete(contact);
        }
    }
}
