int[] liste = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
int index = 0;

void setup() {
  size(400, 400);
  blanding(0, liste);
}

void draw() {
  display(0, liste);
}

void display(int plads, int[] talListe) {
  int value = talListe[plads];
  rect(40*plads, height, 40, -20*value);
  if (plads < talListe.length-1) {
    display(++plads, talListe);
  }
}

int[] blanding(int plads, int[] talListe) {
  int pickRandom = int(random(0, 10));
  int valueA = talListe[plads];
  int valueB = talListe[pickRandom];
  talListe[plads]=valueB;
  talListe[pickRandom]=valueA;

  if (plads < talListe.length-1) {
    blanding(++plads, liste);
    return talListe;
  } else {
    println(talListe);
    return talListe;
  }
}
