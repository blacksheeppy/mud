part of mud;

class Nothing extends Encounter {

  Nothing() : super._();

  @override
  whenEncounter() {
    return "Nothing happened";
  }
}

