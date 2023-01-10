package com.enterpriseproject.enterpriseservlet.controllers;

import Controllers.Commands;
import Models.Film;

import javax.xml.parsers.ParserConfigurationException;
import java.util.Collection;

public class CommandsBridge {
    private final Commands commands;

    public CommandsBridge(){
        try {
            commands = new Commands();
        } catch (ParserConfigurationException e) {
            throw new RuntimeException(e);
        }
    }
    public int insertFilm(String title, int year, String director, String stars, String review) {
        return commands.insertFilm(new Film(title, year, director, stars, review));
    }

    public int insertFilm(Film f) {
        return commands.insertFilm(f);
    }

    public int updateFilm(int id, String title, int year, String director, String stars, String review) {
        return commands.updateFilm(new Film(id, title, year, director, stars, review));
    }

    public int deleteFilm(int id) {
        return commands.deleteFilm(id);
    }

    public Collection<Film> getAllFilms() {
        return commands.getAllFilms();
    }

    public Film getById(int id) {
        return commands.getById(id);
    }

}
