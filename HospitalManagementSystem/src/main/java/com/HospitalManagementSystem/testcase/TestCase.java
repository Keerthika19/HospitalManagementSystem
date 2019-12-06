package com.HospitalManagementSystem.testcase;

import static org.junit.Assert.*;
import java.sql.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.HospitalManagementSystem.model.Diagnosis;
import com.HospitalManagementSystem.model.Patient;
import com.HospitalManagementSystem.model.Physician;
import com.HospitalManagementSystem.service.HospitalManagementServiceImpl;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
public class TestCase {
@Autowired
HospitalManagementServiceImpl hospitalManagementService;
Patient p;

@Before
public void setUp() throws Exception {
System.out.println("Before method");
}

@Test
public void test1() {
p = new Patient("ishwarya", "i", "ntce1997", Date.valueOf("2015-03-31"), "neve@gmail.com", "+918234567786",
"Tamilnadu", "Star Health Insurance");

Patient newp = hospitalManagementService.enrollPatient(p);
assertEquals("ishwarya", newp.getFirstName());
System.out.println("after method");
}
@Test
public void test2() {
Diagnosis diagnosis = new Diagnosis(10, 10, "fever", "tablet", "Dr.Shiva", Date.valueOf("2019-10-10"), "Yes", "2019-12-10", 10, 0, "Cash");
      Diagnosis diagnosis1=hospitalManagementService.addPatientDiagnosis(diagnosis);
      assertEquals("fever",diagnosis1.getSymptoms());

}

@Test
public void test3(){
List<Physician>  phy= hospitalManagementService.searchPhysician("Urology", "Tamil nadu","Star Health Insurance");
      for (Physician physician : phy) {
     assertEquals("Dr.Guru", physician.getDepartmentName());
}
     
}      
      @Test
      public void test4()
      {
      Physician physician = new Physician(12,"shakila", "c", "ortho", "MD", 13, "Tamilnadu", "Star Health Insurance");
Physician newphysician = hospitalManagementService.createPhysician(physician);
     assertEquals("shakila", newphysician.getFirstName());
System.out.println(newphysician.getFirstName());
      }
 @Test
 public void test5()
 {
 List<Diagnosis> dia=hospitalManagementService.findByPatientId(10);
 for (Diagnosis diagnosis : dia) {
     assertEquals("fever", diagnosis.getSymptoms());
}
 }

}