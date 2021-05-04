# KOSTA 213기 ( 유기견 조회 서비스)
​
## 멍냥멍냥 프로젝트 (21년4월20~ 21년5월4일)
​
[![Image Logo](https://camo.githubusercontent.com/4052866b9cfdb121606add150b8cd1d9d410b10805d857812ee3bd45cdd02805/68747470733a2f2f6966682e63632f672f324a4a69787a2e706e67)](https://camo.githubusercontent.com/4052866b9cfdb121606add150b8cd1d9d410b10805d857812ee3bd45cdd02805/68747470733a2f2f6966682e63632f672f324a4a69787a2e706e67)
​
[![Build Status](https://camo.githubusercontent.com/c29bc856325cd819f5a3bb6536b7982f04a161e656de066c4c970e0079c14ff5/68747470733a2f2f7472617669732d63692e6f72672f6a6f656d6363616e6e2f64696c6c696e6765722e7376673f6272616e63683d6d6173746572)](https://travis-ci.org/joemccann/dillinger) 
	멍냥멍냥은 어디든지 접속 가능 주소:http://f1c04.xyz/Team4_war/
​
```
    1.프로젝트 기획의도
        - 유기동물들에 대한 상세정보를 제공하고 사용자들간의 커뮤니티를 위한 게시판 서비스 제공               
    2.팀원:배윤호,배재영,임상혁,정한영,강희원
        -  배윤호: google map api 를 이용하여 보호소 위치 마크, 유기동물조회 검색page 만들기
        -  배재영: ERD설계,커뮤니티페이지 만들기
        -  임상혁: 로그인,로그아웃,서버배포, 네이버,카카오톡 로그인API 이용,암호화
        -  정한영:전체적인 홈페이지 UI만들기
        -  강희원: 공공데이터포탈 API 데이터베이스 삽입,마이페이지 만들기
    3.사용된기술
        - JSP/Servlet  /AWS  DB/  공공데이터포탈API / JAVA/  Linux서버배포/ Tomcat
    4. 특징
        - 권한은 사용자, 보호소,관리자가 있다. (보호소,관리자)는 미 구현
        - 어디서든 접속하여 사용 할 수 있다.
        - 게시판(커뮤니티)에서 의견을 공유 할 수 있다.
        - 유기동물 상세보기를 누르면 지도에서 유기동물이 보호된 곳을 보여 줄 수 있다.
        - 유기동물 상태를 확인하여 입양을 할 수 있다.   (입양은 미 구현)
        - 네이버 아이디, 카카오 아이디로 로그인이 가능하다. (카카오로그인은 권한을 줘야한다)
        - 비밀번호에 암호화를 적용시켜 보안에 투자를 하였다.
```
​
## ERD
​
[![ERD IMG](https://camo.githubusercontent.com/d2c4f080e0ae15528c47ee86f84f1e56446b5528181bbed7ff41dc140a50a43f/68747470733a2f2f6966682e63632f672f324a436847702e706e67)](https://camo.githubusercontent.com/d2c4f080e0ae15528c47ee86f84f1e56446b5528181bbed7ff41dc140a50a43f/68747470733a2f2f6966682e63632f672f324a436847702e706e67)
​
- USER:고객
- RESERVATION:예약
- BOARD:커뮤니티
- REPLY:댓글
- ANIMALS:유기동물
​
## 프로젝트 화면
​
[![Image Logo](https://camo.githubusercontent.com/7bd304771d1e6daca35cb3c0e6a54d23ed3bf61c71654b5d0c237fc34b23488a/68747470733a2f2f6966682e63632f672f464568796a382e706e67)](https://camo.githubusercontent.com/7bd304771d1e6daca35cb3c0e6a54d23ed3bf61c71654b5d0c237fc34b23488a/68747470733a2f2f6966682e63632f672f464568796a382e706e67)
​
- 프로젝트의 기본 화면들
​
## 프로그램 개발 환경
​
[![Image Logo](https://camo.githubusercontent.com/2a4f86797bd35932e908f85251eebdc482fb3c795e0e7c6b0f3554883acf3b14/68747470733a2f2f6966682e63632f672f6c79587369382e6a7067)](https://camo.githubusercontent.com/2a4f86797bd35932e908f85251eebdc482fb3c795e0e7c6b0f3554883acf3b14/68747470733a2f2f6966682e63632f672f6c79587369382e6a7067)
​
## 프로그램 일정
​
[![Image Logo](https://camo.githubusercontent.com/f6a0684c17bae77af52e485382aeff2e317c362ab987d883a1ea8e692de2485d/68747470733a2f2f6966682e63632f672f5a437a5959442e706e67)](https://camo.githubusercontent.com/f6a0684c17bae77af52e485382aeff2e317c362ab987d883a1ea8e692de2485d/68747470733a2f2f6966682e63632f672f5a437a5959442e706e67)
​
## dataSave 프로그램(공공데이터 포탈 API->데이터베이스 삽입 코드)
​
```
package dataSave;
​
import java.io.IOException;
​
​
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
​
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
​
import model.AnimalsDAO;
import model.AnimalsVO;
public class dataSave {
	private static String getTagValue(String tag, Element eElement) {
	    NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
	    Node nValue = (Node) nlList.item(0);
	    if(nValue == null) 
	        return null;
	    return nValue.getNodeValue();
	}
	public static void main(String[] args) throws SAXException, IOException, ParserConfigurationException {
		String url="http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/abandonmentPublic?bgnde=20210301&endde=20210331&upr_cd=6110000&pageNo=1&numOfRows=10&org_cd=3060000&ServiceKey=E%2BZTrGwIlQduLFIYgx4BLluIr5uMHb%2FqqhckInIDSU9jG7cf549CZ3%2BXfANRqOTNmE3w4gNsA6rbA%2B4B8PIgWw%3D%3D";
		String ServiceKey="E%2BZTrGwIlQduLFIYgx4BLluIr5uMHb%2FqqhckInIDSU9jG7cf549CZ3%2BXfANRqOTNmE3w4gNsA6rbA%2B4B8PIgWw%3D%3D";
		String QueryParams = '?' + "ServiceKey" + '=' + ServiceKey; 
	
		DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
		/* Document doc = dBuilder.parse(url + QueryParams); */
        Document doc = dBuilder.parse(url);
        // root tag
        doc.getDocumentElement().normalize();
        System.out.println("Root element: " + doc.getDocumentElement().getNodeName());
     // 파싱할 tag
        NodeList nList = doc.getElementsByTagName("item");
        
        System.out.println("파싱할 리스트 수 : "+ nList.getLength());  // 파싱할 리스트 수 :  	
        for(int temp = 0; temp < nList.getLength(); temp++){		
        	Node nNode = nList.item(temp);
        	if(nNode.getNodeType() == Node.ELEMENT_NODE){
        						
        		Element eElement = (Element) nNode;
        		System.out.println("######################");        		
        		AnimalsVO an = new AnimalsVO();
        		an.setAnimalID(getTagValue("desertionNo", eElement));
        		an.setPopfile(getTagValue("popfile", eElement));
        		an.setColor(getTagValue("colorCd", eElement));
        		an.setSex(getTagValue("sexCd", eElement));
        		an.setAge(getTagValue("age", eElement));
        		an.setWeight(getTagValue("weight", eElement));
        		an.setNeuter(getTagValue("neuterYn", eElement));
        		an.setHappenDate(getTagValue("happenDt", eElement));
        		an.setHappenPlace(getTagValue("happenPlace", eElement));
        		an.setSpacialMark(getTagValue("specialMark", eElement));
        		an.setState(getTagValue("processState", eElement));
        		an.setCareName(getTagValue("careNm", eElement));
        		an.setCareTel(getTagValue("careTel", eElement));
        		an.setCareAddr(getTagValue("careAddr", eElement));
        		an.setBookNum("0");
        		an.setKindCd(getTagValue("kindCd", eElement));        		
        		AnimalsDAO avo =new AnimalsDAO();
        		avo.datasave(an);
        		
	}
        	
​
}
}
}
```
​
## <요구사항 분석>
​
```
1.비회원은 회원가입을 할수 있다.
2.비회원은 내정보를 볼수 없다.
3.회원은 ID찾기,PW찾기를 할수 있다.
4.회원은  이름과 비밀번호를 수정할수 있다.
5.회원은 자신의 이름 아이디 개인/보호소 상태를 확인할수 있다.
6.회원은 회원탈퇴를 할수 있다.
7. 로그인을 하지 않아도 유기동물리스트를 볼 수 있다.
8. 조건 검색은 총 4가지인데 1가지만 선택하고 나머지는 전체로 해야 검색이 가능하다.
(단, 품종은 대분류와 소분류를 함께 검색할 수 있다.)
9. 페이지는 모두 연결되기 때문에 검색한 후 1페이지로 따로 이동을 해주어야 한다.
10. 어떠한 동물이든 상세보기가 가능하다.
11. 상세정보에서 다시 목록으로 갈 수 있다.
12. 상세정보에서 입양신청을 누르면 입양신청이 되었다는 알림이 뜬다.
13. 상세정보에서 보호소 위치가 Google map으로 나오고 확대 및 축소가 가능하며 위성사진, 실제사진을 볼 수 있다.
14. 모든 유기동물은 공공데이터이기 때문에 업데이트를 하면 정보가 수정되거나 삭제 및 추가될 수 있다.
15.사용자는 홈화면의 메뉴버튼을 통해 모든 페이지에 접근할 수 있다.
16.사용자는 반응형 메뉴바를 이용하여 스크롤을 다시 올리지않아도 다른페이지로 넘어갈 수 있다.
17.멍냥멍냥 로고를 클릭하면 언제든 홈화면으로 돌아갈 수 있다.
18.로그인 하지 않은 사용자도 커뮤니티 게시판의 게시물들을 확인 할 수 있다.
19.로그인 한 사용자는 글과 댓글을 쓸 수 있다.
20.로그인 한 사용자와 글을 쓴 사용자가 같을 경우에만 수정, 삭제 작업을 할 수 있다.
21.로그인 한 사용자와 댓글을 쓴 사용자가 같을 경우에만 댓글을 삭제 할 수 있다.
22.게시물에서 게시물 리스트 목록으로 다시 돌아 갈 수 있다.
23.로그인 하지 않은 사용자는 댓글 창을 클릭할 시 로그인 페이지로 갈 수 있다.
24.게시물 작성 시 현재 날짜를 받아와 작성 일에 띄워 줄 수 있다.
25.댓글 작성 시 현재 날짜와 시간:분을 받아와 작성자 이름 옆에 띄워 줄 수 있다.
26.게시물을 조회하면 사용자의 쿠키 값을 비교하여 조회수를 1씩 증가 할 수 있다.
27.Q&A 게시판은 누구나 이용 가능하며, 해당 게시물 제목을 클릭 시 다른 페이지로 연결 된다.
```
​
## 공공데이터포탈API ->DB (JAVA)프로그램
​
- datasave ->controller ->datasave.java
​
## 프로그램 실행순서
​
- dataSave.java->공공데이터 데이터베이스에 넣기->jsp/Servlet 구현->서버 배포->도메인 에 들어가기->끝
​
## 프로그램에서 필요한것
​
- 공공데이터포탈에서 사용한 API(https://data.go.kr/iim/api/selectAPIAcountView.do)
- 자바 jdk(https://www.oracle.com/)
- 이클립스(https://www.eclipse.org/)
- ORACLE SQL DEVELOPE(https://www.oracle.com/tools/downloads/sqldev-downloads.html)
- ORACLE(https://www.oracle.com/downloads/)
- TOMCAT(http://tomcat.apache.org/)
- JQUERY(https://jquery.com/)
- GIT(https://git-scm.com/)
- Slack(https://slack.com/intl/ko-kr/)
​
## 참고
​
- notion주소:https://www.notion.so/0eea0e99445c479d9ccd4ff1c658f9aa
