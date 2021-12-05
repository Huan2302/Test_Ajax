package com.example.JSPD6_Bai3;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "xu-ly-active", value = "/xu-ly-active")
public class Active extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("active"));
        PrintWriter out = response.getWriter();
        if (id == 1){
            out.println(
                    "<iframe width=\"670\" height=\"377\" src=\"https://www.youtube.com/embed/1VbufbrV1Cg\" frameborder=\"0\" allowfullscreen></iframe>"
            );
        }else if (id == 2){
            out.println(
                    "<iframe width=\"670\" height=\"377\" src=\"https://www.youtube.com/embed/Zbx9zxZNFGE\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"
            );
        }else if (id == 3){
            out.println(
                    "<iframe width=\"670\" height=\"377\" src=\"https://www.youtube.com/embed/L2ltn1zSfDY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"
            );
        }else if (id == 4){
            out.println(
                    "<iframe width=\"670\" height=\"377\" src=\"https://www.youtube.com/embed/AuUwqgy80H0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"
            );
        }else if (id == 5){
            out.println(
                    "<iframe width=\"670\" height=\"377\" src=\"https://www.youtube.com/embed/-i5iAa2H1Bs\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"
            );
        }
    }
}
