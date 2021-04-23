package com.train.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.train.bean.trains;

public class trainsdao {
	public List<trains> queryMessageList(String startstation,String endstation,String date) {
        List<trains> messageList = new ArrayList<trains>();
        //数据库连接
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = null;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/train" +
                "?useUnicode=true&characterEncoding=utf8","root","123456");
            StringBuilder sql = new StringBuilder("SELECT trainquery.id,trainquery.startstation,trainquery.endstation,trainquery.starttime,trainquery.endtime,trainquery.date,shangwu,yideng,erdeng,gaojiruanwo,ruanwo,dongwo,yingwo,ruanzuo,yingzuo,wuzuo,shangwup,yidengp,erdengp,gaojiruanwop,ruanwop,dongwop,yingwop,ruanzuop,yingzuop,wuzuop from trainquery,seatquery,ticket where trainquery.id=seatquery.id and trainquery.id=ticket.id and 1=1");
            List<String> paramList = new ArrayList<String>();
            
            if(startstation != null && !"".equals(startstation.trim())) {
                sql.append(" and trainquery.startstation=? ");
                paramList.add(startstation);
            }
            if(endstation != null && !"".equals(endstation.trim())) {
                sql.append(" and trainquery.endstation=? ");
                paramList.add(endstation);
            }
            if(date != null && !"".equals(date.trim())) {
                sql.append(" and trainquery.date=? ");
                paramList.add(date);
            }
            PreparedStatement ptmt = conn.prepareStatement(sql.toString());
            for (int i=0;i<paramList.size();i++) {
                ptmt.setString(i+1,paramList.get(i));
            }
            ResultSet rs =  ptmt.executeQuery();
            while (rs.next()) {
                trains train = new trains();
                messageList.add(train);
                train.setId(rs.getString("id"));
                train.setStartstation(rs.getString("startstation"));
                train.setEndstation(rs.getString("endstation"));
                train.setDate(rs.getString("date"));
                train.setStarttime(rs.getString("starttime"));
                train.setEndtime(rs.getString("endtime"));
                train.setShangwu(rs.getInt("shangwu"));
                train.setYideng(rs.getInt("yideng"));
                train.setErdeng(rs.getInt("erdeng"));
                train.setGaojiruanwo(rs.getInt("gaojiruanwo"));
                train.setRuanwo(rs.getInt("ruanwo"));
                train.setDongwo(rs.getInt("dongwo"));
                train.setYingwo(rs.getInt("yingwo"));
                train.setRuanzuo(rs.getInt("ruanzuo"));
                train.setYingzuo(rs.getInt("yingzuo"));
                train.setWuzuo(rs.getInt("wuzuo"));
                
                train.setShangwup(rs.getString("shangwup"));
                train.setYidengp(rs.getString("yidengp"));
                train.setErdengp(rs.getString("erdengp"));
                train.setGaojiruanwop(rs.getString("gaojiruanwop"));
                train.setRuanwop(rs.getString("ruanwop"));
                train.setDongwop(rs.getString("dongwop"));
                train.setYingwop(rs.getString("yingwop"));
                train.setRuanzuop(rs.getString("ruanzuop"));
                train.setYingzuop(rs.getString("yingzuop"));
                train.setWuzuop(rs.getString("wuzuop"));
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return messageList;
    }
}
