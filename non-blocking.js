// Starting Time
var start = new Date();
var hrstart = process.hrtime();
// ./Starting Time

function chatSequence(chat, sleep){
  // Ending Time per Sequence
  var end = new Date() - start,
  hrend = process.hrtime(hrstart);
  // ./Ending Time per Sequence
  // Output per Sequence
  console.log("Chat Sequence => '"+chat+"' processed on :  "+hrend+" Seconds");
  // ./Output per Sequence
  chatProcess(chat, sleep);
}

function chatProcess(chat, sleep){
  setTimeout(function(){
    // Ending Time per Process
    var end = new Date() - start,
    hrend = process.hrtime(hrstart);
    // ./Ending Time per Process
    // Output per Process
    console.log("Chat Process => '"+chat+"' processed on : : "+hrend+" Seconds");
    // ./Output per Process
  },sleep);
}

// Request
chatSequence("chat 1",5000);
chatSequence("chat 2",1000);
