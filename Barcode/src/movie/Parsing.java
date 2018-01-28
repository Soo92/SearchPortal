package movie;

import java.io.IOException;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class Parsing {
	public String getSearch(String query,String section,String ie,String page) throws IOException {

		Document doc = Jsoup.connect("http://movie.naver.com/movie/search/result.nhn?query="+query+"&section="+section+"&ie="+ie+"&page="+page).get();
		Elements cond = doc.select("#content");
		cond.select(".search_menu").remove();
		cond.select(".goto_manager").remove();
		cond.select(".search_footer").remove();
		cond.select(".search_header").remove();
		cond.select(".etc_btn").empty();
		cond.select("#assistant").remove();
		
		for(int i=0;i<cond.select("a").size();i++) {
			String hr = cond.select("a").eq(i).attr("href");
			if(hr.contains("nhn")&&!hr.contains("/movie/search/result.nhn")&&!hr.contains("/movie/bi/mi/basic.nhn"))
				cond.select("a").eq(i).removeAttr("href");
		}
		
		String list = cond.outerHtml().replaceAll("/movie/search/result.nhn", "./movie_home.jsp");
		list = list.replaceAll("/movie/bi/mi/basic.nhn", "./movie_parse.jsp");

//		cond.select("a").eachAttr("href")
//		cond.select("a").remove();

		return list;
	}

	public void getpremovie() throws IOException {
		ArrayList<String> codes = new ArrayList<>();
		Document doc = Jsoup.connect("http://movie.naver.com/movie/running/premovie.nhn").get();
		for(int i=0;i<(doc.select(".thumb > a").size()>20?20:doc.select(".thumb > a").size());i++) {
			codes.add(doc.select(".thumb > a").eq(i).attr("href").split("=")[1]);
		}
		for(int i=0;i<codes.size();i++) {
			movie(codes.get(i));
		}
	}
	
	public int movie(String code) throws IOException {
		Document doc = Jsoup.connect("http://movie.naver.com/movie/bi/mi/basic.nhn?code="+code).get();
		String title = doc.select(".h_movie a").first().text();
		String subtitle = doc.select(".h_movie2").first().text().replaceAll(" ,", ",");;
		String star = doc.select("#actualPointPersentBasic").first()==null?"0.00":doc.select("#actualPointPersentBasic").first().text();
		star = star.split("점")[star.split("점").length-1].equals(" 없음")?"0.00":star.split("점")[star.split("점").length-1];
		
		String genre=null;
		String country=null;
		String runtime=null;
		String opendate=null;
		String ages=null;
		
		for(int i=0;i<doc.select(".info_spec > span").size();i++) {
			String cond=doc.select(".info_spec > span").eq(i).select("a").attr("href");
			String cond2=doc.select(".info_spec > span").eq(i).text();
			String val=doc.select(".info_spec > span").eq(i).text();
			if(cond.contains("genre"))  genre=val;
			else if(cond.contains("nation")) country=val;
			else if(cond2.contains("분")) runtime=val;
			else if(cond.contains("open")) opendate=val;
			else if(cond.contains("grade")) ages=val;
		}
		
		runtime = (runtime!=null&&runtime.contains("분"))?runtime.substring(0, runtime.length()-1):"0";
		System.out.println(opendate==null);
		opendate = opendate==null?"":(opendate.split(" ")[0]+(opendate.split(" ").length>1?opendate.split(" ")[1]:""));
		opendate=opendate.replace("개봉", ".");
		int age = (ages==null||ages.equals("")||!isNumeric(ages))?1:(Integer.parseInt(ages.split(" ")[1].equals("전체")?"0":
			(ages.split(" ")[1].equals("청소년")?"15":ages.split(" ")[1].replace("세", ""))));

		String director = doc.select(".info_spec2 > dl > dd > a").first().text();
		String actor = doc.select(".info_spec2 > .step2 > dd > a").text().replaceAll(" ", ", ");

		String likes = (doc.select("#actualPointCountWide em").text().replace(",", ""));
		likes = likes.equals("")?"0":likes;
		int like = Integer.parseInt(likes);
		String content = (doc.select(".story_area > h5").first()==null?"":doc.select(".story_area > h5").first().outerHtml())
				+ (doc.select(".story_area > p").first()==null?"":doc.select(".story_area > p").first().outerHtml());
		String pic = doc.select(".poster img").attr("src").split("\\?")[0];
		
//		System.out.println(title); System.out.println(subtitle); System.out.println(star); System.out.println(genre); System.out.println(country); System.out.println(runtime); System.out.println(opendate); System.out.println(director); System.out.println(actor); System.out.println(age); System.out.println(like); System.out.println(content); System.out.println(pic); System.out.println("--------------------");
		MovieBean bean = new MovieBean();
		bean.setTitle(title);
		bean.setSubtitle(subtitle);
		bean.setStar(star);
		bean.setStar(star);
		bean.setGenre(genre);
		bean.setCountry(country);
		bean.setRuntime(runtime);
		bean.setOpendate(opendate);
		bean.setDirector(director);
		bean.setActor(actor);
		bean.setAge(age);
		bean.setLike(like);
		bean.setContent(content);
		bean.setPic(pic);
		
		MovieMgr mgr = new MovieMgr();
		mgr.insertMember(bean);
		return mgr.getIdx(title);
	}
	
    public static boolean isNumeric(String s) {  
        return s.matches("[-+]?\\d*\\.?\\d+");  
    }  
}
