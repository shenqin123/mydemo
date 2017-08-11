package dao;

import java.util.List;

import domain.User;

public interface UserDao {
	public User getUser(String loginname,String password);
	public boolean addUser(User user);
	public boolean deleteUser(int userid);
	public boolean updateUser(User user);
	public boolean queryByNumber(int id);
	public List<User> chouQu(int num);
	public List<User> showAllUser();

}
