part of mud;

class Environment {

  String _name;
  Encounter encounter = new Encounter(6);

  Environment(name) {
    this.name = name;
  }

  get damage => encounter.damage_value;

  set name(name) {
    this._name = "${name} - ";
  }

  String stumbleUpon() {
    this.encounter = new Encounter(6);
    var done_damage = damage;
    var interaction = "${this._name} You stumble upon something ${this.encounter
        .whenEncounter()}";
    if (done_damage > 0) {
      return interaction = "$interaction <br /> You have ${done_damage}!";
    }
    return interaction;
  }
}