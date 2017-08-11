package test;

import org.junit.Test;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import domain.User;

public class UserTest {
	UserDao dao=new UserDaoImpl();
	
	@Test
	public void loginTest(){
		
		User user=dao.getUser("1400802001", "ypk123");
		System.out.println(user);
	}
	@Test
	public void addUserTest(){
		User user=new User();
		user.setCourse_count(1);
		user.setLogin_status(1);
		user.setUsername("lllll");
		user.setUsernumber("ddddd");
		user.setUserpassword("dddd");
		System.out.println(dao.addUser(user));
	}
}
