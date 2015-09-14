/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab4.model;

/**
 *
 * @author Ankita
 */
public final class TriangleAreaCalculatorStrategy implements GeometricAreaCalculator {

    private String height, base;

    public TriangleAreaCalculatorStrategy() {
    }

    public TriangleAreaCalculatorStrategy(final String height, final String base) {
        setHeight(height);
        setBase(base);
    }

    public String getHeight() {
        return height;
    }

    public void setHeight(final String height) {
        if (height == null) {
            this.height = "0";
        } else {
            this.height = height;
        }
    }

    public String getBase() {
        return base;
    }

    public void setBase(final String base) {
        if (base == null) {
            this.base = "0";
        } else {
            this.base = base;
        }
    }

    @Override
    public double getArea() {
        return Double.parseDouble(height) * Double.parseDouble(base) * 0.5;
    }

}
