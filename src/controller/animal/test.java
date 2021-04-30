package controller.animal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

import model.animal.AnimalsDAO;
import model.animal.AnimalsVO;
import model.user.UserDAO;
import model.user.UserVO;

public class test {

	public static void main(String[] args) {
//		UserDAO user = new UserDAO();
//		UserVO uu = user.selectByUserId("korea");
//		System.out.println(uu.getUserName());
//		System.out.println(uu.getUserDiv());
//		System.out.println(uu.getUserID());
//		System.out.println(uu.getUserPW()); 
		
		AnimalsDAO anidao = new AnimalsDAO();
		
//		String addr = "경기도 양주시 남면 감악산로 63-37 (남면) 한국동물구조관리협회";
//		String[] list = addr.split(" ");
		
//		HashSet<String> aniSet = anidao.selectCareAddr();
//		
//		
//		HashSet<String> local1 = new HashSet<String>();
//		HashSet<String> local2 = new HashSet<String>();
//		for(String addr: aniSet) {
//			local1.add(addr.split(" ")[0]);
//			local2.add(addr.split(" ")[1]);
//		}
//		
//		
//		for(String aa:local1) {
//			System.out.println("시/도 : "+aa);
//		}
//		for(String aa:local2) {
//			System.out.println("시/군/구 : "+aa);
//		}
//		
//		System.out.println();
//		
//		HashSet<String> set = anidao.selectKind();
//		
//		HashSet<String> kindSet = new HashSet<String>();
//		HashSet<String> dogSet = new HashSet<String>();
//		HashSet<String> catSet = new HashSet<String>();
//		HashSet<String> otherSet = new HashSet<String>();
//		String zz = null;
//		String vv = null;
//		for(String addr: set) {
//			zz = addr.split(" ")[0];
//			vv = zz.substring(1, zz.length()-1);
//			kindSet.add(vv);
//			System.out.println(zz.substring(1, zz.length()-1)+"aa");
//			System.out.println(addr.split(" ", 2)[1]+"aa");
//			if(vv.equals("개")) {
//				dogSet.add(addr.split(" ", 2)[1]);
//			}
//			else if(vv.equals("고양이")) {
//				catSet.add(addr.split(" ", 2)[1]);
//			}
//			else {
//				otherSet.add(addr.split(" ", 2)[1]);
//			}
//		}
//		
//		for(String bb:dogSet) {
//			System.out.println("개 : "+bb);
//		}
//		for(String bb:catSet) {
//			System.out.println("고양이 : "+bb);
//		}
//		for(String bb:otherSet) {
//			System.out.println("기타충족 : "+bb);
//		}
//		
		
		List<AnimalsVO> vo = new ArrayList<AnimalsVO>();
		vo = anidao.selectByLocalA(1, 5, "경기도");
		
		for(AnimalsVO aa:vo) {
			System.out.println(aa);
		}
		
	}

}
