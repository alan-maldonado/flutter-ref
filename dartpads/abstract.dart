void main() {
  PowerGrid grid = new PowerGrid();
  NuclearPlant nuclear = new NuclearPlant();
  SolarPlant solar = new SolarPlant();

  grid.addPlant(nuclear);
  grid.addPlant(solar);
}

class PowerGrid {
  list<PowerPlant> conenctedPlants = [];

  addPlant(PowerPlant plant) {
    plant.turnOn();
    conenctedPlants.add(plant);
  }
}

abstract class PowerPlant {
  turnOn();
}

class NuclearPlant implements PowerPlant {
  turnOn() {
    print('Im a nuclear plant turning on');
  }
}

class SolarPlant implements PowerPlant {
  turnOn() {
    print('Im a solar plant turning on');
  }
}
