package model.animal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import util.DBUtil;

public class AnimalsDAO {
	
	public List<AnimalsVO> selectAll(){
		List<AnimalsVO> aniList = new ArrayList<>();
		Connection conn = DBUtil.getConnection();
		Statement st = null;
		ResultSet rs = null;
		String sql = "select * from animals";
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				AnimalsVO makeRs = makeAnimals(rs);
				aniList.add(makeRs);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.dbClose(rs, st, conn);
		}
		
		return aniList;
	}
  
	public AnimalsVO selectById(String animalId) {
		AnimalsVO animal = null;
		Connection conn = DBUtil.getConnection();
		PreparedStatement st = null;
		ResultSet rs = null;
		String sql = "select * from ANIMALS where animalid = ?";  //411322202100033
		try {
			st = conn.prepareStatement(sql);
			st.setString(1,animalId);
			rs = st.executeQuery();
			while(rs.next()) {
				//System.out.println(rs.getString(1));
				animal = makeAnimals(rs);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.dbClose(rs, st, conn);
		}
		
		return animal;
	}
   
   public int datasave(AnimalsVO any) {
      String sql ="insert into animals values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
      Connection conn;
      PreparedStatement st=null;
      int result=0;
      
      conn = DBUtil.getConnection();
      try {

         st=conn.prepareStatement(sql);
         
         st.setString(1,any.getAnimalID() );
         st.setString(2,any.getPopfile() );
         st.setString(3,any.getColor() );
         st.setString(4,any.getSex() );
         st.setString(5,any.getAge() );
         st.setString(6,any.getWeight() );
         st.setString(7,any.getNeuter() );
         st.setString(8,any.getHappenDate() );
         st.setString(9,any.getHappenPlace() );
         st.setString(10,any.getSpacialMark() );
         st.setString(11,any.getState() );
         st.setString(12,any.getCareName() );
         st.setString(13,any.getCareTel() );
         st.setString(14,any.getCareAddr() );
         st.setInt(15,any.getBookNum() );
			
         result =st.executeUpdate(); //insert/update/delete executeUpdate()
        
      } catch (SQLException e) {
         try {
            conn.rollback();
         } catch (SQLException e1) {
            // TODO Auto-generated catch block
            e1.printStackTrace();
         }
         e.printStackTrace();
      }finally {
         DBUtil.dbClose(null, st, conn);
      }
      
      return result;
   }
   
   private AnimalsVO makeAnimals(ResultSet rs) throws SQLException {
	   AnimalsVO ani = new AnimalsVO();
	   ani.setAge(rs.getString("age"));
	   ani.setBookNum(rs.getInt("booknum"));
	   ani.setAnimalID(rs.getString("animalid"));
	   ani.setCareAddr(rs.getString("careaddr"));
	   ani.setCareName(rs.getString("carename"));
	   ani.setCareTel(rs.getString("caretel")); 
	   ani.setColor(rs.getString("color"));
	   ani.setHappenDate(rs.getString("happendate"));
	   ani.setHappenPlace(rs.getString("happenplace"));
	   ani.setNeuter(rs.getString("neuter"));
	   ani.setPopfile(rs.getString("popfile")); 
	   ani.setSex(rs.getString("sex"));
	   ani.setSpacialMark(rs.getString("spacialmark"));
	   ani.setState(rs.getString("state")); 
	   ani.setWeight(rs.getString("weight"));
	   
	   return ani;
   }
   
   



}