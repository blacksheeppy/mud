part of mud;

class Bear extends Encounter with RandomDamage {
  Bear() : super._();

  var _nrg = new Random();

  get damage_value => _nrg.nextInt(5);

  @override
  whenEncounter() {
    return "grr grow, You encounter a bear!";
  }

}