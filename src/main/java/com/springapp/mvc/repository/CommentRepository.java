package com.springapp.mvc.repository;

import com.springapp.mvc.domain.Comment;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class CommentRepository {

    @Autowired
    private SessionFactory sessionFactory;

    public void addComment(Comment comment) {
        this.sessionFactory.getCurrentSession().save(comment);
    }

    public List<Comment> listAllComment() {
        return this.sessionFactory.getCurrentSession().createQuery("from Comment").list();
    }

    public void removeComment(Integer id) {
        Comment contact = (Comment) this.sessionFactory.getCurrentSession().load(Comment.class, id);
        if (contact != null) {
            this.sessionFactory.getCurrentSession().delete(contact);
        }
    }
}
