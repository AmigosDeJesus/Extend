/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.github.amigos_de_jesus.extend.dao;

import com.github.amigos_de_jesus.extend.model.GraphType;
import com.github.amigos_de_jesus.extend.model.Sensor;
import com.github.amigos_de_jesus.extend.model.Type;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceException;
import javax.persistence.TypedQuery;

/**
 * Data access class for {@link Sensor}
 */
public class SensorDAO {

    private static final EntityManagerFactory EMF
            = Persistence.createEntityManagerFactory("db");

    /**
     * Inclui um Sensor
     * @param type {@link Sensor#type}
     * @param representation {@link Sensor#representation}
     * @param description {@link Sensor#description}
     */
    public static void inclui(Type type,
            GraphType representation,
            String description) {

        EntityManager em = EMF.createEntityManager();
        em.getTransaction().begin();

        Sensor entity = new Sensor(
                type,
                representation,
                description);

        em.persist(entity);
        em.getTransaction().commit();
        em.close();
    }

    /**
     * Lista todos os sensores
     * @return {@link Sensor}
     */
    public static List<Sensor> listar() {
        EntityManager em = EMF.createEntityManager();
        String jpql = "from Sensor";
        TypedQuery<Sensor> query = em.createQuery(jpql, Sensor.class);
        List<Sensor> result = query.getResultList();
        em.close();
        return result;
    }

    /**
     * Encontra um sensor
     * @param id {@link Sensor#id}
     * @return {@link Sensor}
     */
    public static Sensor visualizar(int id) {
        EntityManager em = EMF.createEntityManager();
        Sensor result = em.find(Sensor.class, id);
        em.close();
        return result;
    }

    public static void alterar(Integer id, Type type, GraphType graphType, String description, String publicId) {
        EntityManager em = EMF.createEntityManager();
        em.getTransaction().begin();
        Sensor sensor = em.find(Sensor.class, id);
        if(type != null)sensor.setType(type);
        if(graphType != null)sensor.setRepresentation(graphType);
        if(description != null)sensor.setDescription(description);
        if(publicId != null)sensor.setPublicId(publicId);
        em.getTransaction().commit();
        em.close();
    }

    public static void excluir(Integer id) {
        EntityManager em = EMF.createEntityManager();
        em.getTransaction().begin();
        Sensor sensor = em.find(Sensor.class, id);
        em.remove(sensor);
        em.getTransaction().commit();
        em.close();
    }
}
