// preload navigation images
if (document.images){

/* variable.  Modify the value of 'path.'*/
 var path = "images";

 next_on  = new Image();
 next_on.src = path +"/next_on.gif";
 next_off  = new Image();
 next_off.src = path + "/next_off.gif";
 
 prev_on  = new Image();
 prev_on.src = path + "/prev_on.gif";
 prev_off  = new Image();
 prev_off.src = path + "/prev_off.gif";
}

function HiLight(imgDocID,imgObjName) {
 if (document.images){
  document.images[imgDocID].src = eval(imgObjName + ".src")
 }
}