package jdbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;

import javax.sql.rowset.CachedRowSet;
import javax.sql.rowset.RowSetProvider;



public class BaseDao {
	Connection conn=null;
	PreparedStatement ps=null;
	//更新方法
	public boolean executeUpdate(String sql,Object...args){
		try {
//			获得连接
			conn=ConnectionFactory.getConnection();
//			执行sql语句  肯定是个增删改
			ps=conn.prepareStatement(sql);
			if(args!=null){
				for (int i = 0; i < args.length; i++) {
					ps.setObject(i+1, args[i]);
				}
			}
			//行数  执行语句 
			int row=ps.executeUpdate();
			if(row>0){
				return true;
			}else{
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally{
			this.close();
		}
	}
	//查询方法；
	public ResultSet executeQuery(String sql,Object...args){
		try {
			conn=ConnectionFactory.getConnection();
			ps=conn.prepareStatement(sql);
			if(args!=null){
				for (int i = 0; i < args.length; i++) {
						ps.setObject(i+1, args[i]);
					
				}
			}
			ResultSet rs=ps.executeQuery();
			CachedRowSet rowset=RowSetProvider.newFactory().createCachedRowSet();
			rowset.populate(rs);
			return rowset;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally{
			this.close();
		}
	}
	public void close(){
		try {
			if(ps!=null) ps.close();
			if(conn!=null) conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
