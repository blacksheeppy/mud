part of mud;

class Vampire extends Encounter {

  Vampire() : super._();

  @override
  whenEncounter() {
    return "A vampire is flying by!";
  }
}

