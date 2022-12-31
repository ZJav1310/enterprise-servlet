package com.enterpriseproject.enterpriseservlet;

import Models.Film;
import com.enterpriseproject.enterpriseservlet.controllers.CommandsBridge;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "UpdateServlet", value = "/UpdateServlet")
public class UpdateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Film film = new CommandsBridge().getById(id);
        System.out.println("GET BY ID: " + id);

        request.setAttribute("id", film.getId());
        request.setAttribute("title", film.getTitle());
        request.setAttribute("director", film.getDirector());
        request.setAttribute("stars", film.getStars());
        request.setAttribute("review", film.getReview());
        request.setAttribute("year", film.getYear());
        System.out.println(film.getTitle());

        request.setAttribute("film", film);

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/update.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String title = request.getParameter("title");
        String director = request.getParameter("director");
        String stars = request.getParameter("stars");
        String review = request.getParameter("review");
        int year = Integer.parseInt(request.getParameter("year"));

        new CommandsBridge().updateFilm(id, title, year, director, stars, review);

        System.out.println("Update: " + id);

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
        rd.forward(request, response);
    }
}
