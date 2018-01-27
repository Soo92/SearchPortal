package movie;

import java.awt.List;
import java.io.IOException;
import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

public class Parsing {
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
			System.out.println(cond2);
		}
		runtime = (runtime!=null&&runtime.contains("분"))?runtime.substring(0, runtime.length()-1):"0";
		opendate = opendate.split(" ")[0]+(opendate.split(" ").length>1?opendate.split(" ")[1]:"");
		int age = Integer.parseInt((ages.equals("")||ages.split(" ")[1].equals("전체"))?"0":
			(ages.split(" ")[1].equals("청소년")?"15":ages.split(" ")[1].replace("세", "")));

		String director = doc.select(".info_spec2 > dl > dd > a").first().text();
		String actor = doc.select(".info_spec2 > .step2 > dd > a").text().replaceAll(" ", ", ");

		String likes = (doc.select("#actualPointCountWide em").text().replace(",", ""));
		likes = likes.equals("")?"0":likes;
		int like = Integer.parseInt(likes);
		String content = (doc.select(".story_area > h5").first()==null?"":doc.select(".story_area > h5").first().outerHtml())
				+ doc.select(".story_area > p").first().outerHtml();
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
}
