String[] poemText = new String[0]; // An array of Strings to hold your poem's text
String[] sourceText = {"8:30","Go to School","Skip Breakfast","God, I forgot to bring my ID.",
"Did I leave the door open","NONONONONO","But I saw my roommates still having breakfast.",
"I'm hungry.","When is this class finished.","What should I eat for lunch","Salad, Muffin, on the hill, chipotle, no Merryhoff",
"I sholdn't miss Genernal Tso's Chicken.", "OK, you needto loss weigh.","Let's have some healthy food.","NONONONONONONONONO",
"ZZZZZZZZZZ"};
float text_size = 30; // Size of font
float maxPoemLength = 1;

// used to incrament the feed of text
int current;

void setup() {
	size(880, 480);
	textSize(text_size);
}

void draw() {
	background(0);

  //Draw all sentences in the poemText array
	for (int i = 0; i < poemText.length; i++) {
		text(poemText[i], 350, height/2);
	}
}

void mousePressed(){
  if(poemText.length == maxPoemLength){
    poemText = new String[0];
  }
  
  //append only used with arrays - it's telling poemTexts value to transfer to sourceText's current value calling that index number line of text
	poemText = append(poemText, sourceText[current]);

//choose a sentence
  if(current == 15){
    current = 0;
  }
  else{
    current++;
  }
}