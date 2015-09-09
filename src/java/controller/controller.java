/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.AreaCalculatorService;

/**
 *
 * @author Adam
 */
@WebServlet(name = "controller", urlPatterns = {"/controller"})
public class controller extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    private static String RESULTS_PAGE = "/index.jsp";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        AreaCalculatorService acs = new AreaCalculatorService();
        String calculatorType = request.getParameter("formType");
        
        if (calculatorType.equals("rectangle")) {
            String length = request.getParameter("length");
            String width = request.getParameter("width");
            double rectangleArea = acs.getRectangleArea(length, width);
            request.setAttribute("rectangleArea", rectangleArea);
        }
        
        if (calculatorType.equals("circle")){
            String radius = request.getParameter("radius");
            double circleArea = acs.getCircleArea(radius);
            request.setAttribute("circleArea", circleArea);
        }
        
        if (calculatorType.equals("triangle")){
            String base = request.getParameter("base");
            String height = request.getParameter("height");
            double triangleArea = acs.getTriangleArea(base, height);
            request.setAttribute("triangleArea", triangleArea);
        }
        
        RequestDispatcher view =
                request.getRequestDispatcher(RESULTS_PAGE);
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
