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
     * 连接数据库的方法
     * @return
     * @throws ClassNotFoundException
     * @throws SQLException
     */
    public static Connection getCon() throws ClassNotFoundException, SQLException{
        Class.forName(driver);//加载数据库驱动
        System.out.println("测试加载数据库成功");
        Connection con=DriverManager.getConnection(url, user, password);
        System.out.println("测试数据库链接成功");
        return con;
    }
    
    /***
     * 关闭数据库的方法
     * @param con
     * @param ps
     * @param rs
     */
    public static void close(Connection con,PreparedStatement ps){
//        if(rs!=null){//关闭资源，避免出现异常
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
