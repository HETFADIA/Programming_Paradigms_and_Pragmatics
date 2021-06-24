package Lab1;
public class Temperature {
    public static void main(String[] args) {
        double degFahrenheit;
        double degCelsius;
        degFahrenheit = 98.6;
        degCelsius = (degFahrenheit - 32) / 1.8;
        System.out.println(degFahrenheit + " degrees degFahrenheit equals " + degCelsius + " degrees degCelsius");
    }
}
