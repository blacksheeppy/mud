part of mud;

abstract class Encounter {
  int damage_value = 0;

  Encounter._();

  factory Encounter(Map options){
    options ??= new Map();
    var number = options["number"] ?? 1;
    var damage_value = options["damage"] ?? 1;
    var _rng = new Random();
    var value = _rng.nextInt(number);
    switch (value) {
      case 1:
        return new Bear();
      case 2:
        return new Angel();
      case 3:
        return new DrunkenSailer();
      case 4:
        return new Ghost();
      case 5:
        return new Goblin(damage_value);
      case 6:
        return new Bear();
      default:
        return new Nothing();
    }
  }

  whenEncounter();
}
