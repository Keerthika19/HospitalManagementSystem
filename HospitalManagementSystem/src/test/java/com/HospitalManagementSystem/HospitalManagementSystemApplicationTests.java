package com.HospitalManagementSystem;

import java.sql.Date;
import static org.junit.Assert.*;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.HospitalManagementSystem.model.Diagnosis;
import com.HospitalManagementSystem.service.HospitalManagementServiceImpl;
@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
class HospitalManagementSystemApplicationTests {
	
	/*static HospitalManagementServiceImpl hospitalManagementServiceImpl;
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		 hospitalManagementServiceImpl = new HospitalManagementServiceImpl();
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		hospitalManagementServiceImpl = null;
	}

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void test() {
		Diagnosis diagnosis = new Diagnosis(10, 10, "fever", "tablet", "Dr.Shiva", Date.valueOf("2019-10-10"), "Yes", "2019-12-10", 10, 0, "Cash");
		Diagnosis diagnosis1=hospitalManagementServiceImpl.addPatientDiagnosis(diagnosis);
		assertEquals("fever",diagnosis1.getSymptoms());
	}
*/
}
