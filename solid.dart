// ILUSTRASI
// https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/original/academy/dos:667be67cad5b9ae32c8b54adfc8c19fc20210831104726.png

abstract class Vechile<T> {
  void accelerate();
  void brake();
  void refill(T source);
}

class Car<T> implements Vechile<T> {

  EngineInterface? engine;
  StorageInterface<T> storage;

  Car({
    required this.engine,
    required this.storage
  });

  @override
  void accelerate() {
    engine?.move();
  }

  @override
  void brake() {
    
  }

  @override
  void refill(T source){
    storage.fill(source);
  }

}

abstract class EngineInterface {
  void move();
}

class PetrolEngine implements EngineInterface {
  OilPipe oilPipe;
  Piston piston;

  PetrolEngine({
    required this.oilPipe,
    required this.piston
  });
  
  @override
  void move() {
    final oil = oilPipe.suckOil();
    final energy = oil.burn();
    energy.push(piston);
  }

}

class Piston {
  void move() {}
}

class OilPipe {
  Oil suckOil() {
    return Oil();
  }
}
 
class Oil {
  Energy burn() {
    return Energy();
  }
}
 
class Energy {
  void push(Piston piston) {
    piston.move();
  }
}

abstract class StorageInterface<T> {
  void fill(T source);
  T getSource();
}

class Tank implements StorageInterface<Oil> {

  late Oil _oil;

  @override
  void fill(Oil source) {
    _oil = source;
  }

  @override
  Oil getSource() {
    return _oil;
  }

}

void main() {
  // Petrol Car
  final oil = Oil();
  final tank = Tank();
  final oilPipe = OilPipe();
  final piston = Piston();
  final petrolEngine = PetrolEngine(oilPipe: oilPipe, piston: piston);
  final petrolCar = Car<Oil>(engine: petrolEngine, storage: tank);
  petrolCar.refill(oil);
  petrolCar.accelerate();
  petrolCar.brake();

  // Electric Car
  final electrons = Electrons();
  final battery = Battery(electrons);
  final speedController = SpeedController(bms: BatteryManagementSystem(), motor: ElectricMotor());
  final electricEngine = ElectricEngine(speedController);
  final electricCar = Car<Electrons>(engine: electricEngine, storage: battery);
  electricCar.refill(electrons);
  electricCar.accelerate();
  electricCar.brake();
}

class Electrons {}

class BatteryManagementSystem {
  Battery getBattery() {
    return Battery(Electrons());
  }
}

class ElectricMotor {
  void rotate(Battery battery) {

  }
}

class Battery implements StorageInterface<Electrons>{
  Electrons _electrons;

  Battery(this._electrons);

  @override
  void fill(Electrons source) {
    _electrons = source;
  }

  @override
  Electrons getSource() {
    return _electrons;
  }

}

class SpeedController {
  BatteryManagementSystem bms;
  ElectricMotor motor;

  SpeedController({required this.bms,required this.motor});

  void control() {
    final battery = bms.getBattery();
    motor.rotate(battery);
  }
}

class ElectricEngine implements EngineInterface {
  SpeedController _speedController;
  ElectricEngine(this._speedController);
  @override
  void move() {
    _speedController.control();
  }
}