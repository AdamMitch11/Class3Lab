/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Adam
 */
public class AreaCalculatorService {
    public double getSquareArea(String len1, String wid1){
        double length, width, area;
        try {
            length = Double.parseDouble(len1);
            width= Double.parseDouble(wid1);
            area = (length*width);
        } catch (Exception e) {
            area = 0;
        }
        return area;
    }
    
    public double getCircleArea(double radius) {
        return (Math.PI * Math.pow(radius, 2));
    }
    
    public double getTriangleArea(double base, double height) {
        return ((1.0/2.0)*base*height);
    }
}
