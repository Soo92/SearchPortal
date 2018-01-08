package place;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.HashMap;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class WeatherByGPSApplication {
	public String HashWeather(String weather){
		HashMap<String, Integer> WeatherMap = new HashMap<String, Integer>();
		WeatherMap.put("Clouds", 06);
		WeatherMap.put("Clouds", 07);
		WeatherMap.put("Rainy", 011);
		WeatherMap.put("Snow", 014);
		WeatherMap.put("Mist", 014);
		return WeatherMap.get(weather)+"";
	}
    public String main(Double longitude, Double latitude) {
    	String weather="";
        try{
            //OpenAPI call�ϴ� URL
            String urlstr = "http://api.openweathermap.org/data/2.5/weather?"
                        + "lat="+latitude+"&lon="+longitude
                        +"&appid=68f1bd433ca926bc012f2852c868758c";
            URL url = new URL(urlstr);
            BufferedReader bf;
            String line;
            String result="";
            
            //���� ������ �޾ƿ´�.
            bf = new BufferedReader(new InputStreamReader(url.openStream()));

            //���ۿ� �ִ� ������ ���ڿ��� ��ȯ.
            while((line=bf.readLine())!=null){
                result=result.concat(line);
//                System.out.println(line);
            }

            //���ڿ��� JSON���� �Ľ�
            JSONParser jsonParser = new JSONParser();
            JSONObject jsonObj = (JSONObject) jsonParser.parse(result);

            //���� ���
//            System.out.println("���� : " + jsonObj.get("name"));

            //���� ���
            JSONArray weatherArray = (JSONArray) jsonObj.get("weather");
            JSONObject obj = (JSONObject) weatherArray.get(0);
//            System.out.println("���� : "+obj.get("main"));

            //�µ� ���(����µ��� ��ȯ �ʿ�)
            JSONObject mainArray = (JSONObject) jsonObj.get("main");
            double ktemp = Double.parseDouble(mainArray.get("temp").toString());
            int temp = (int)(ktemp-273.15);
//            System.out.printf("�µ� : %d\n",temp);
            weather=obj.get("main")+","+temp+","+obj.get("icon");
            bf.close();
        }catch(Exception e){
            System.out.println(e.getMessage());
        }return weather;
    }
}