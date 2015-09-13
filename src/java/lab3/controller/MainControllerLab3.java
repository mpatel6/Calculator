/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab3.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lab3.model.CircleAreaCalculatorStrategy;
import lab3.model.GeometricAreaCalculator;
import lab3.model.RectangleAreaCalculatorStrategy;
import lab3.model.TriangleAreaCalculatorStrategy;

/**
 *
 * @author Ankita
 */
@WebServlet(name = "MainControllerLab3", urlPatterns = {"/MainControllerLab3"})
public class MainControllerLab3 extends HttpServlet {

    private static final String RESULT_PAGE = "lab3/geometricAreaCalculators.jsp";

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        GeometricAreaCalculator areaService;

        String calcType = request.getParameter("shape");

        if (calcType != null) {
            if (calcType.equals("rect")) {
                String length = request.getParameter("length");
                String width = request.getParameter("width");
                areaService = new RectangleAreaCalculatorStrategy(length, width);
                request.setAttribute("areaRect", areaService.getArea());
            } else if (calcType.equals("tri")) {
                String height = request.getParameter("height");
                String base = request.getParameter("base");
                areaService = new TriangleAreaCalculatorStrategy(height, base);
                request.setAttribute("areaTri", areaService.getArea());
            } else if (calcType.equals("circ")) {
                String radius = request.getParameter("radius");
                areaService = new CircleAreaCalculatorStrategy(radius);
                request.setAttribute("areaCirc", areaService.getArea());
            }
        }

        RequestDispatcher view = request.getRequestDispatcher(RESULT_PAGE);
        view.forward(request, response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
