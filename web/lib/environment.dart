part of mud;

class Environment {

  String name;
  Encounter encounter = new Bear();

  Environment(this.name);

  String stumbleUpon() {
    return "${this.name} You stumble upon something ${this.encounter
        .whenEncounter()}";
  }
}