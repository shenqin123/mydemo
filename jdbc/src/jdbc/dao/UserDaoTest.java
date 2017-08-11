package jdbc.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import jdbc.domain.User;

public class UserDaoTest {
	public static void main(String[] args) {
		UserDaoImpl mp=new UserDaoImpl();
/*		User user = new User();
		user.setUid(6);
		user.setUsername("¡÷«‡œº");
		user.setPassword("456");
		
		//System.out.println(mp.addUser(user));
		List<User> list=new ArrayList<User>();
		list=mp.queryAll();
		Iterator<User> it=list.iterator();
		while(it.hasNext()){
			User s=it.next();
			System.out.println(s);
		}
		for(User s:list){
			System.out.println(s);
		}*/
//		System.out.println();
		User user=mp.getUserById(1);
		if(user!=null){
			
			System.out.println(user.getUid()+" "+user.getUsername()+" "+user.getPassword());
		}
	}
}
