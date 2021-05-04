package dataSave;

import java.io.IOException;


import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

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
        	

}
}
}