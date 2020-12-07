int[] liste = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
int index = 0;

void setup() {
  size(400, 400);
  frameRate(10);
  blanding(0, liste);
}

void draw() {
  clear();
  display(0, liste);
  //println(findMax(liste, index, index));
  //byt(liste, index, findMax(liste, 0, 0));
}

void mousePressed() {
  int max = findMax(liste, index, index);
  println(index, " ", max);
  byt(liste, index, max);
  println(max);
  index++;
}
void display(int plads, int[] talListe) {
  int value = talListe[plads];
  rect(40*plads, height, 40, -20*value);
  //text();
  if (plads < talListe.length-1) {
    display(++plads, talListe);
  }
}

void sortering() {
}

void byt(int[] talListe, int pointer1, int pointer2) {
  int valueA = talListe[pointer1];
  int valueB = talListe[pointer2];
  talListe[pointer1] = valueB;
  talListe[pointer2] = valueA;
}

int findMax(int[] talListe, int pointer, int maxV) {
  if (pointer > talListe.length-2) {
    return maxV;
  }
  if (talListe[pointer+1]>talListe[maxV]) {
    return findMax(talListe, pointer+1, pointer+1);
  } else {
    return findMax(talListe, pointer+1, maxV);
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
    //println(talListe);
    return talListe;
  }
}
