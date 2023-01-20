package com.enterpriseproject.enterpriseservlet;

import Models.Film;
import com.enterpriseproject.enterpriseservlet.controllers.CommandsBridge;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet", value = "/HomeServlet")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Film> films;
        films = (List<Film>) new CommandsBridge().getAllFilms();
        request.setAttribute("allFilms", films);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
