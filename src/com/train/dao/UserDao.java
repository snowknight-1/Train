package com.train.dao;

import java.sql.*;

import com.train.bean.User;
import com.train.utils.BaseDao;

public class UserDao {

    /***
     * �û���½�ķ�������
     * @param user
     * @return
     */
    public User login(User user){
    	User u = null;
    	Connection connection = null;
    	PreparedStatement preparedStatement = null;
    	ResultSet resultSet = null;
    	
    	try{
    		// ��ȡ���ݿ�����
    		connection = BaseDao.getCon();
    		// дsql���
    		String sql = "select * from user where phonenumber=? and password=? ";
    		preparedStatement = (PreparedStatement)connection.prepareStatement(sql);
    		preparedStatement.setString(1, user.getPhonenumber());
    		preparedStatement.setString(2, user.getPassword());
    		resultSet = preparedStatement.executeQuery();
    		System.out.println(resultSet);
    		if(resultSet.next()){
    			u = new User();
    			u.setPhonenumber(resultSet.getString("phonenumber"));
    			u.setUsername(resultSet.getString("username"));
    			u.setPassword(resultSet.getString("password"));
    			u.setUser_id(Integer.parseInt(resultSet.getString("user_id")));
    			System.out.println("��½�ɹ�");
    		} else {
    			System.out.println("�û������������");
    		}
    	} catch (SQLException e) {
    		e.printStackTrace();
    	} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
    		BaseDao.close(connection, preparedStatement);
    	}
    	return u;
    }
    
    /***
     * �û�ע��ķ�������
     * @param user
     * @return
     * @throws ClassNotFoundException 
     */
    public boolean register(User user){
    	Connection connection = null;
        PreparedStatement preparedStatement = null;
        boolean flag = true;
        try {
            connection = BaseDao.getCon();
            String sql = "insert into user(username,password,name,idnumber,email,phonenumber)values(?,?,?,?,?,?);";
            preparedStatement = (PreparedStatement)connection.prepareStatement(sql);
            preparedStatement.setString(1,user.getUsername());
            preparedStatement.setString(2,user.getPassword());
            preparedStatement.setString(3,user.getName());
            preparedStatement.setString(4,user.getIdnumber());
            preparedStatement.setString(5,user.getEmail());
            preparedStatement.setString(6,user.getPhonenumber());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            flag = false;
        } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			flag = false;
		}finally{
            BaseDao.close(connection,preparedStatement);
        }
		return flag;
    }
	
}
