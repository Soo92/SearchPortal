package place;
/*
 * GpsToAddress - GPS 위도 경도로 한글 주소로 변환 - google maps API
 */

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.*;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;

class GpsToAddress {
	double latitude;
	double longitude;
	String regionAddress;
	String location;
	
	public GpsToAddress(double latitude, double longitude) throws Exception {
		this.latitude = latitude;
		this.longitude = longitude;
		this.regionAddress = getRegionAddress(getJSONData(getApiAddress()));
	}
	
	public GpsToAddress(String location) throws Exception {
		this.location = location;
		this.regionAddress = getGps(getJSONData(getApiGps()));
	}

	private String getApiAddress() {
		String apiURL = "http://maps.googleapis.com/maps/api/geocode/json?latlng="
				+ latitude + "," + longitude + "&language=ko";
		return apiURL;
	}
	private String getApiGps() {
		String apiURL = "http://maps.googleapis.com/maps/api/geocode/json?address="
				+ location
				+ "&region=kr";
		return apiURL;
	}

	private String getJSONData(String apiURL) throws Exception {
		String jsonString = new String();
		String buf;
		URL url = new URL(apiURL);
		URLConnection conn = url.openConnection();
		BufferedReader br = new BufferedReader(new InputStreamReader(
				conn.getInputStream(), "UTF-8"));
		while ((buf = br.readLine()) != null) {
			jsonString += buf;
		}
		return jsonString;
	}

	private String getRegionAddress(String jsonString) {
		JSONObject jObj = (JSONObject) JSONValue.parse(jsonString);
		JSONArray jArray = (JSONArray) jObj.get("results");
		jObj = (JSONObject) jArray.get(0);
		return (String) jObj.get("formatted_address");
	}
	private String getGps(String jsonString) {
		JSONObject jObj = (JSONObject) JSONValue.parse(jsonString);
		JSONArray jArray = (JSONArray) jObj.get("results");
		jObj = (JSONObject) jArray.get(0);
		System.out.println(jObj);
		jObj = (JSONObject) jObj.get("geometry");
		System.out.println(jObj);
		jObj = (JSONObject) jObj.get("location");
		Double lng = (Double) jObj.get("lng");
		Double lat = (Double) jObj.get("lat");
		return lat+","+lng;
	}

	public String getAddress() {
		return regionAddress;
	}
}
public class Geocoding {
	public String city(double latitude, double longitude) throws Exception {
		GpsToAddress gps = new GpsToAddress(latitude, longitude);
		return gps.getAddress();
	}
	public String latlng(String location) throws Exception {
		GpsToAddress gps = new GpsToAddress(location);
		return gps.getAddress();
	}
}