part of mud;

class Angel extends Encounter {
  Angel() : super._();

  get damage_value => -8;

  @override
  whenEncounter() {
    return "wow, you encountered an angel, this will give you strenght and healing possibilities";
  }


}