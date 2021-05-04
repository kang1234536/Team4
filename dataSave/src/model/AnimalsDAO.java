package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import util.DBUtil;

public class AnimalsDAO {
  

   
   public int datasave(AnimalsVO any) {
      String sql ="insert into animals values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
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
         st.setString(15,any.getBookNum() );
         st.setString(16,any.getKindCd() );
         
			
         result =st.executeUpdate(); //insert/update/delete�� executeUpdate()�� ����Ѵ�.
        
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
   
   



}