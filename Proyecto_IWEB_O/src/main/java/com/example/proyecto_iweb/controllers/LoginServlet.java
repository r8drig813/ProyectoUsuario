package com.example.proyecto_iweb.controllers;

import com.example.proyecto_iweb.models.beans.Cuentas;
import com.example.proyecto_iweb.models.daos.CuentasDaos;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String action = req.getParameter("action") != null ? req.getParameter("action") : "login";

        if (action.equals("login")) {

            HttpSession session = req.getSession();

            if(session != null && session.getAttribute("usuarioLog") != null){

                Cuentas cuentas = (Cuentas) session.getAttribute("usuarioLog");

                if(cuentas.getIdCuentas()>0){ //estoy loggedIn
                    resp.sendRedirect(req.getContextPath() + "/JuegosServlet");
                }else{ // no estoy loggedId
                    RequestDispatcher dispatcher = req.getRequestDispatcher("loginPage.jsp");
                    dispatcher.forward(req, resp);
                }
            }
        }else{ //logout
            req.getSession().invalidate();
            resp.sendRedirect(req.getContextPath());
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("inputEmail");
        String pass = req.getParameter("inputPassword");

        CuentasDaos cuentasDaos = new CuentasDaos();

        Cuentas cuentas = cuentasDaos.validateUsernameAndPassword(email, pass);


        if (cuentas != null) { //usuario y password correctos
            HttpSession session = req.getSession();
            session.setAttribute("usuarioLog", cuentas);

            session.setMaxInactiveInterval(300);//en segundos

            resp.sendRedirect(req.getContextPath());
        } else { //usuario o password incorrectos
            req.setAttribute("error", "Usuario o password incorrectos");
            req.getRequestDispatcher("loginPage.jsp").forward(req, resp);
        }
    }
}
