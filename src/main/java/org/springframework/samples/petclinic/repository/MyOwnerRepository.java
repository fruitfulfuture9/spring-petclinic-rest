package org.springframework.samples.petclinic.repository;

import org.springframework.dao.DataAccessException;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.Repository;
import org.springframework.samples.petclinic.model.Owner;

import java.util.Collection;
import java.util.List;

public interface MyOwnerRepository extends OwnerRepository, Repository<Owner, Long> {
    //, JpaRepository<Owner, Long> {

    List<Owner> findByFirstName(String firstName);

    @Override
    default Collection<Owner> findByLastName(String lastName) throws DataAccessException {
        return null;
    }

    @Override
    default Owner findById(int id) throws DataAccessException {
        return null;
    }

    @Override
    default void save(Owner owner) throws DataAccessException {

        //return null;
    }

    @Override
    default void delete(Owner owner) {

    }

//    @Override
//    default void save(Owner owner) throws DataAccessException {
//
//    }


}
