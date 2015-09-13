/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab3.model;

/**
 *
 * @author Ankita
 */
public final class CircleAreaCalculatorStrategy implements GeometricAreaCalculator {

    private String radius;

    public CircleAreaCalculatorStrategy() {
    }

    public CircleAreaCalculatorStrategy(final String radius) {
        setRadius(radius);

    }

    public String getRadius() {
        return radius;
    }

    public void setRadius(final String radius) {
        if (radius == null) {
            this.radius = "0";
        } else {
            this.radius = radius;
        }
    }

    @Override
    public double getArea() {
        return Double.parseDouble(radius) * Double.parseDouble(radius) * Math.PI;
    }

}
