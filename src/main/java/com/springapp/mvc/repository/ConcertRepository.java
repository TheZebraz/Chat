package com.springapp.mvc.repository;

import com.springapp.mvc.domain.Concerts;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class ConcertRepository {

    @Autowired
    private SessionFactory sessionFactory;

    public void addConcert(Concerts concerts) {
        this.sessionFactory.getCurrentSession().save(concerts);
    }

    public void updateConcert(Concerts concerts) {
        this.sessionFactory.getCurrentSession().update(concerts);
    }

    public List<Concerts> listAll() {
        return this.sessionFactory.getCurrentSession().createQuery("from Concerts").list();
    }

    public void removeConcert(Integer id) {
        Concerts contact = (Concerts) this.sessionFactory.getCurrentSession().load(Concerts.class, id);
        if (contact != null) {
            this.sessionFactory.getCurrentSession().delete(contact);
        }
    }
}