package com.github.amigos_de_jesus.extend.model;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;

/**
 * Entity class for Sensors
 */
@Entity
public class Sensor implements Serializable {

    /**
     * Default constructor
     * @param type {@link #type}
     * @param representation {@link #representation}
     * @param description {@link #description}
     * @param publicId  {@link #publicId}
     */
    public Sensor(
            Type type, 
            GraphType representation, 
            String description) {
        this.type = type;
        this.representation = representation;
        this.description = description;
        try {
            this.publicId = String.format("%064x", new java.math.BigInteger(1,
                    MessageDigest.getInstance("SHA-256").digest()));
        } catch (NoSuchAlgorithmException ex) {
            throw new RuntimeException(ex);
        }
    }
    
    /**
     * For JPA use only
     */
    protected Sensor() {}
    
    /**
     * Unique private unchangeable identifier
     */
    @Id
    private int id;
    
    /**
     * Getter for id
     * @return {@link #id}
     */
    public int id() {
        return id;
    }

    /**
     * Type of sensor
     */
    @Enumerated(EnumType.ORDINAL)
    private Type type;

    /**
     * Getter for type
     * @return {@link #type}
     */
    public Type type(){
        return type;
    }
    
    /**
     * Type of graph which will be used to display info
     */
    @Enumerated(EnumType.ORDINAL)
    private GraphType representation;
    
    /**
     * Getter for representation
     * @return representation
     */
    public GraphType representation(){
        return representation;
    }
    
    /**
     * Description for this instance
     */
    private String description;
    
    /**
     * Getter for description
     * @return {@link #description}
     */
    public String description() {
        return description;
    }
    
    /**
     * Unique public changeable identifier
     */
    private String publicId;
    
    /**
     * Getter for publicId
     * @return {@link #publicId}
     */
    public String publicId() {
        return publicId;
    }
    
}
