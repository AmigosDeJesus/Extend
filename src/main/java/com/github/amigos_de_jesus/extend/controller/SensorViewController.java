/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.github.amigos_de_jesus.extend.controller;

import com.github.amigos_de_jesus.extend.dao.SensorDAO;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 
 */
@WebServlet("/pages/cadastro/cadastro")
public class SensorViewController extends HttpServlet {
    @Override
    protected void service(
            HttpServletRequest req,
            HttpServletResponse resp) 
                    throws ServletException, IOException{
        
        try {
            int id = Integer.valueOf(req.getParameter("id"));
            req.setAttribute("sensor", SensorDAO.visualizar(id));
        } catch(IllegalArgumentException | NullPointerException ex){
            //id não passado ou não encontrado
        }
        
        req.getRequestDispatcher("cadastro.jsp").forward(req, resp);
    }
}
