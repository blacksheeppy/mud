part of mud;

class Vampire extends Encounter with RandomDamage, SaySomething {

  Vampire() : super._();

  @override
  whenEncounter() {
    return "A vampire is flying by! ${sentence()}";
  }
}