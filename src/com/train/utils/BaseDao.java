package com.train.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class BaseDao {
	
    private static String driver="com.mysql.jdbc.Driver";
    private static String url="jdbc:mysql://127.0.0.1:3306/train?useSSL=false";
    private static String user="root";
    private static String password="123456";
    
    /***
     * �������ݿ�ķ���
     * @return
     * @throws ClassNotFoundException
     * @throws SQLException
     */
    public static Connection getCon() throws ClassNotFoundException, SQLException{
        Class.forName(driver);//�������ݿ�����
        System.out.println("���Լ������ݿ�ɹ�");
        Connection con=DriverManager.getConnection(url, user, password);
        System.out.println("�������ݿ����ӳɹ�");
        return con;
    }
    
    /***
     * �ر����ݿ�ķ���
     * @param con
     * @param ps
     * @param rs
     */
    public static void close(Connection con,PreparedStatement ps){
//        if(rs!=null){//�ر���Դ����������쳣
//            try {
//                rs.close();
//            } catch (SQLException e) {
//                // TODO Auto-generated catch block
//                e.printStackTrace();
//            }
//        }
        if(ps!=null){
            try {
                ps.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        if(con!=null){
            try {
                con.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }
    
}
