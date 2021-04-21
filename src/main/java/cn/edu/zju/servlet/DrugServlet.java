package cn.edu.zju.servlet;

import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;
import java.util.Map;

@WebServlet(name = "DrugServlet",  urlPatterns = "/drugs")
public class DrugServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String drugsContent = Files.readString(Path.of(getServletContext().getRealPath("/WEB-INF/drugs.data")));
        Gson gson = new Gson();
        Map drugs = gson.fromJson(drugsContent, Map.class);
        List<Map> drugList = (List<Map>) drugs.get("data");
        request.setAttribute("drugs", drugList);
        request.getRequestDispatcher("/views/drugs.jsp").forward(request, response);
    }
}
