/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.github.amigos_de_jesus.extend.controller;

import com.github.amigos_de_jesus.extend.dao.SensorDAO;
import com.github.amigos_de_jesus.extend.model.GraphType;
import com.github.amigos_de_jesus.extend.model.Type;
import java.io.IOException;
import javax.persistence.PersistenceException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/extend/pages/home/home.jsp")
public class SensorController extends HttpServlet {

    @Override
    protected void service(
            HttpServletRequest req,
            HttpServletResponse resp)
            throws ServletException, IOException {
        
        try {
            String msg;
            
            String op = req.getParameter("op");
            String description = req.getParameter("description");
            String publicId = req.getParameter("publicId");
            
            Integer id;
            try {
                id = Integer.valueOf(req.getParameter("id"));
            } catch(NumberFormatException ex){
                id = null;
            }
            
            Type type;
            try { 
                type = Type.valueOf(req.getParameter("type"));
            } catch(IllegalArgumentException ex) {
                type = null;
            }
            
            GraphType graphType;
            try { 
                graphType = GraphType.valueOf(req.getParameter("gtype"));
            } catch(IllegalArgumentException ex) {
                graphType = null;
            }

            try {
                switch (op) {
                    case "incluir":
                        SensorDAO.inclui(type, graphType, description);
                        msg = "Inclusão realizada com sucesso.";
                        break;
                    case "alterar":
                        msg = "Alteração realizada com sucesso.";
                        break;
                    case "excluir":
                        msg = "Exclusão realizada com sucesso.";
                        break;
                    case "":
                        msg = "";
                        break;
                    default:
                        throw new IllegalArgumentException("Operação \"" + op + "\" não suportada.");
                }
            } catch (IllegalArgumentException ex) {
                msg = ex.getMessage();
            } catch (PersistenceException ex) {
                msg = "Não foi possivel efetuar a operação";
            }
            req.setAttribute("msg", msg);
            req.setAttribute("sensores", SensorDAO.listar());

            req.getRequestDispatcher("home.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace(resp.getWriter());
        }
    }
}
