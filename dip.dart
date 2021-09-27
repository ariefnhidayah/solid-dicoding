// CONTOH ILUSTRASI
// https://d17ivq9b7rppb3.cloudfront.net/original/academy/202107121123424960e584d03fce671be0a1d94924e639.jpeg

abstract class EngineInterface {
  void start();
}

class PetrolEngine implements EngineInterface {
  @override
  void start() {
    print("Start Petrol Engine");
  }
}
 
class HybridEngine implements EngineInterface {
  @override
  void start() {
    print("Start Hybrid Engine");
  }
}
 
class DieselEngine implements EngineInterface {
  @override
  void start() {
    print("Start Diesel Engine");
  }
}

class Car {
  final EngineInterface _engine;
  
  Car(this._engine);

  void start() {
    _engine.start();
  }
}

void main() {
  final petrolEngine = PetrolEngine();
  final petrolCar = Car(petrolEngine);
 
  final dieselEngine = DieselEngine();
  final dieselCar = Car(dieselEngine);
 
  final hybridEngine = HybridEngine();
  final hybridCar = Car(hybridEngine);
 
  petrolCar.start();
  dieselCar.start();
  hybridCar.start();
}