part of mud;

class Person {

  int x;
  int y;
  int health;
  int damage;

  Person(this.x, this.y, this.health, this.damage);

  save() {
    var values = window.localStorage;
    if (values != null) {
      values['person_state'] = JSON.encode(this);
    }
  }

  Map toJson() {
    Map values = new Map();
    values['x'] = this.x;
    values['y'] = this.y;
    values['health'] = this.health;
    values['damage'] = this.damage;
    return values;
  }
}