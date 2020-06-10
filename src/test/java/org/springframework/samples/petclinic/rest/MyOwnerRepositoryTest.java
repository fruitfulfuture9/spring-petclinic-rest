package org.springframework.samples.petclinic.rest;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.samples.petclinic.model.Owner;
import org.springframework.samples.petclinic.repository.MyOwnerRepository;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class MyOwnerRepositoryTest {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private MyOwnerRepository ownerRepository;

    //My Test function
    @Test
    public void testOwnerRepositoryByFirstname() {

        List<Owner> owners = ownerRepository.findByFirstName("Akshaj");
        logger.info("owners list from owner repository -> {}",owners);
        logger.info("Pets for owner:: -> {} pets -> {}" , owners.get(0).getFirstName() ,owners.get(0).getPets());
        logger.info("Visits for owner:: -> {} Pet -> {} :: Visits -> {}", owners.get(0).getFirstName(),
                                                                            owners.get(0).getPets().get(0).getName(),
                                                                            owners.get(0).getPets().get(0).getVisits());
    }


}
