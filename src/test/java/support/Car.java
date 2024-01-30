package support;

public class Car {
        public int fuelLevel = 100;
        public int distance = 0;

        public void drive(int distance) {
            if (fuelLevel == 0) {
                System.out.println("Fuel level is 0");
                return;
            }
            this.fuelLevel = this.fuelLevel - distance;
            this.distance = this.distance + distance;
            System.out.println("Driven: " + this.distance + " fuel: " + this.fuelLevel);
        }
        public void fuelUp() {
            this.fuelLevel = 100;
        }
    }

