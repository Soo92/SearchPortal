package NaverMap;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Vector;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;

public class Geocoding {
	
	public String location(String address) {
        String clientId = "Hp1Zq1ougL5HhZPmKDbk";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "4_eldN8t_3";//애플리케이션 클라이언트 시크릿값";
        String location="0,0";
        try {
            String addr = URLEncoder.encode(address, "UTF-8");
            String apiURL = "https://openapi.naver.com/v1/map/geocode?query=" + addr; //json
            //String apiURL = "https://openapi.naver.com/v1/map/geocode.xml?query=" + addr; // xml
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream(),"UTF8"));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream(),"UTF8"));
            }
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
            }
            br.close();
    		JSONObject jObj = (JSONObject) JSONValue.parse(response.toString());
    		jObj = (JSONObject) jObj.get("result");
    		JSONArray jArray = (JSONArray) jObj.get("items");
    		jObj = (JSONObject) jArray.get(0);
    		jObj = (JSONObject) jObj.get("point");
    		Double lng = (Double) jObj.get("x");
    		Double lat = (Double) jObj.get("y");
    		location=lat+","+lng;
        } catch (Exception e) {
            System.out.println(e);
        }
		return location;
	}

    public static void main(String[] args) {
    	Geocoding a = new Geocoding();
    	storeMgr b = new storeMgr();
    	Vector<storeBean> slist = b.getlotto_storeList();
    	for(int i=0;i<slist.size();i++) {
    		if(slist.get(i).getLatlng()==null) {
    			b.updatelotto_store(slist.get(i).getAddress(), slist.get(i).getIdx());
    		}
    	}
    }
}
