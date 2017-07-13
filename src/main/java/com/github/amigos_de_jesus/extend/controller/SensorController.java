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

@WebServlet("/pages/home/home")
public class SensorController extends HttpServlet {

    @Override
    protected void service(
            HttpServletRequest req,
            HttpServletResponse resp)
            throws ServletException, IOException {
        
        try {
            String msg = null;
            MensageType msgType = null;
            
            String op = req.getParameter("op");
            if(op == null) op = "";
            String description = req.getParameter("description");
            String publicId = req.getParameter("publicId");
            
            Integer id;
            try {
                id = Integer.valueOf(req.getParameter("id"));
            } catch(IllegalArgumentException | NullPointerException ex){
                id = null;
            }
            
            Type type;
            try { 
                type = Type.valueOf(req.getParameter("type"));
            } catch(IllegalArgumentException | NullPointerException ex) {
                type = null;
            }
            
            GraphType graphType;
            try { 
                graphType = GraphType.valueOf(req.getParameter("gtype"));
            } catch(IllegalArgumentException | NullPointerException ex) {
                graphType = null;
            }

            try {
                switch (op) {
                    case "incluir":
                        SensorDAO.inclui(type, graphType, description);
                        msg = "Inclusão realizada com sucesso.";
                        break;
                    case "alterar":
                        SensorDAO.alterar(id, type, graphType, description, publicId);
                        msg = "Alteração realizada com sucesso.";
                        break;
                    case "excluir":
                        SensorDAO.excluir(id);
                        msg = "Exclusão realizada com sucesso.";
                        break;
                    case "":
                        break;
                    default:
                        throw new IllegalArgumentException("Operação \"" + op + "\" não suportada.");
                }
                msgType = MensageType.SUCESS;
            } catch (IllegalArgumentException ex) {
                msg = ex.getMessage();
                msgType = MensageType.DANGER;
            } catch (PersistenceException ex) {
                msg = "Não foi possivel efetuar a operação";
                msgType = MensageType.DANGER;
            }
            
            if(msg != null) {
                req.setAttribute("msg", msg);
                req.setAttribute("msg_type", msgType);
            }
            req.setAttribute("sensores", SensorDAO.listar());

            req.getRequestDispatcher("home.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace(resp.getWriter());
        }
    }
    
    public enum MensageType{
        SUCESS("success"), 
        WARNING("warning"), 
        INFO("info"), 
        DANGER("danger");
        
        private final String REPRESENTATION;
        private MensageType(final String representation){
            REPRESENTATION = representation;
        }
        public String representation(){
            return REPRESENTATION;
        }
    }
}
