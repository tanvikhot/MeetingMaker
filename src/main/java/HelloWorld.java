import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static spark.Spark.get;
import static spark.Spark.post;
import static spark.Spark.staticFiles;

public class HelloWorld {
  private static List<String> namesSoFar = new ArrayList<>();

  public static void main(String[] args) {
    staticFiles.location("/public");
    get("/", (request, response) -> {
      Map<String, Object> model = new HashMap<>();
      SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd");
      long DAY_IN_MS = 1000 * 60 * 60 * 24;
      Date sevenDaysLater = new Date(System.currentTimeMillis() + (7 * DAY_IN_MS));
      model.put("minDate", df.format(new Date()));
      model.put("maxDate", df.format(sevenDaysLater));
      return new FreeMarkerEngine().render(new ModelAndView(model, "index.ftl"));
    });
    post("/savedate", (request, response) -> {
      namesSoFar.add(request.queryParams("date"));
      Map<String, Object> model = new HashMap<>();
      model.put("name", request.queryParams("date"));
      return new FreeMarkerEngine().render(
          new ModelAndView(model, "savedate.ftl")
      );
    });
    get("/list", (request, response) -> {
      Map<String, Object> model = new HashMap<>();
      model.put("names", namesSoFar);
      return new FreeMarkerEngine().render(
          new ModelAndView(model, "list.ftl")
      );
    });
  }
}
