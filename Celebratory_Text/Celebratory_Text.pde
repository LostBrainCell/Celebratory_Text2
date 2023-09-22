//Global Variables
int appWidth, appHeight;
String title="WAHOO!!", footer=" drip";
PFont titleFont, footerFont;
color purple=#2300F0, resetDefaultInk=#D11E1E, Lightnavyblue = #6C92FF;
int sizeFont, size;
float xTitle, yTitle, widthTitle, heightTitle;
float xFooter, yFooter, widthFooter, heightFooter;
//
void setup() {
  //fullScreen(); //displayWidth & displayHeight
  size(500, 600);
  appWidth = width;
  appHeight = height;
  //
  // Population 
  xTitle = appWidth*1/4;
  yTitle = appHeight*1/10;
  widthTitle = appWidth*1/2; 
  heightTitle = appHeight*2/10;
  xFooter = xTitle;
  yFooter = appHeight*7/10;
  widthFooter = widthTitle; 
  heightFooter = heightTitle;
  //
  // DIVs or rect(
  // Layout our text space and typographical features
  rect( xTitle, yTitle, widthTitle, heightTitle ); 
  rect(  xFooter, yFooter, widthFooter, heightFooter );
  //
  // Text Setup
  // Fonts from OS (Operating System)
  String[] fontList = PFont.list(); //Lists all fonts available on OS
  printArray(fontList);
  titleFont = createFont("Harrington", 55) ;
  footerFont = createFont("Cambria-Italic-48", 55) ; // Verify the font exists in Processing.Java
  //Tools / Create Font / Find Font / Do not press "OK", known bug
  //
} //End setup
//
void draw() {
  //Text is same size or relative to rect()
  //
  //Drawing Font Code
  //
  //CAUTION: review this tomorrow
  fill(purple);
  textAlign(CENTER, CENTER); // Align X&Y, See Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT | ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = 60;
  textFont(titleFont, size);
  text ( title, xTitle, yTitle, widthTitle, heightTitle );
  fill(Lightnavyblue); //ink
  textAlign(CENTER, TOP);  // Align X&Y, See Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT | ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  textFont(footerFont, size);
  text( footer, xFooter, yFooter, widthFooter, heightFooter );
  fill(resetDefaultInk); //ink
  //
  //
  //rect(  ); //Title:
  //rect(   ); //Footer:
} //End draw
//
void keyPressed() {} // End keyPressed
//
void mousePressed() {} //End mousePressed
//
//MAIN Program
