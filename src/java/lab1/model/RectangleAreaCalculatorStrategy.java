/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab1.model;

/**
 *
 * @author Ankita
 */
public final class RectangleAreaCalculatorStrategy implements GeometricAreaCalculator {
    
    private String length, width;
    
    public RectangleAreaCalculatorStrategy() {
    }
    
    public RectangleAreaCalculatorStrategy(final String length, final String width) {
        setLength(length);
        setWidth(width);
    }
    
    public String getLength() {
        return length;
    }
    
    public void setLength(final String length) {
        this.length = length;
    }
    
    public String getWidth() {
        return width;
    }
    
    public void setWidth(final String width) {
        this.width = width;
    }
    
    @Override
    public double getArea(){
        return Double.parseDouble(length)*Double.parseDouble(width);
    }
    
}
