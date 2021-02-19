package com.portfolio.mymall.repository;
import com.portfolio.mymall.domain.User;
import javax.persistence.EntityManager;
import java.util.List;
import java.util.stream.Stream;

public class UserRepository {

    private final EntityManager entityManager;
    public UserRepository(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    public Stream<User> findByEmail(String email)
    {
        List<User> result = entityManager.createQuery("select U from User U where U.email = :email", User.class)
                .setParameter("email", email)
                .getResultList();
        if(result.isEmpty())
        {
            //예외처리
        }
        return result.stream();
    }

    public User save(User user) {
        entityManager.persist(user);
        return user;
    }
}
