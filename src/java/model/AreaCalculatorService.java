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
    
    public double getCircleArea(String rad1) {
        double radius, area;
        try {
            radius = Double.parseDouble(rad1);
            area = (Math.PI * Math.pow(radius, 2));
        } catch (Exception e) {
            area = 0;
        }
        return area;
    }
    
    public double getTriangleArea(String bas1, String hei1) {
        double base, height, area;
        try {
            base = Double.parseDouble(bas1);
            height= Double.parseDouble(hei1);
            area = ((1.0/2.0)*base*height);
        } catch (Exception e) {
            area = 0;
        }
        return area;
    }
}
