var _ = require("lodash")
var parse2 = ["namanya", "pengampu", "mata", "pelajaran", "pembagian"]

var json =  {
              "mata" : [ "mata pencaharian", "mata pelajaran", "mata uang", "mata kail" ],
              "mdatas" : [ "mata sadasdsa", "mata ssss", "mata uang", "mata kail", "mata ZZZ", "mata XXX" ]
            }

var split = []
for (var i = 0; i < parse2.length; i++) {
  if (parse2[i].endsWith("ku") || parse2[i].endsWith("mu")) {
    var l = parse2[i].replace(/(ku|mu)/gi, "")
  }
  else {
    var l = parse2[i]
  }
  split.push(l)
}
stemming(split)
function stemming (split) {
  // double words
  var temp1 = []
  var temp2 = []
  for (var i = 0; i < split.length; i++) {
    for (var j = 0; j < Object.keys(json).length; j++) {
      if (split[i] == Object.keys(json)[j]) {
        var lihatBelakang = i
        var lihatDepan = i+1
        var keys = Object.keys(json)[j]
        var values = Object.values(json)[j]
        var regex = new RegExp (split[lihatDepan], "g")
        for (var k = 0; k < values.length; k++) {
          if (values[k].match(regex) || values[k].match(regex) !== null){
            temp1.push({
              "index" : i,
              "word" : split[lihatBelakang],
              "visible" : "1"
            })
            i++
            temp1.push({
              "index" : i,
              "word" : split[lihatDepan],
              "visible" : "1"
            })
          }
          // console.log(values[k].match(regex) +" || "+ values[k].match(regex));
        }
      }
      else {
        temp2.push({
          "index" : i,
          "word" : split[i],
          "visible" : "0"
        })
      }
    }
  }
  var all = temp1.concat(temp2)
  var all = _.uniqBy(all, function (e) {
              return e.index;
            });
  var stem = _.orderBy(all, ['index'],['asc']);
  // ./double words

  var s = []
  for (var i = 0; i < stem.length; i++) {
    if (stem[i].visible == "0") {
      // prefiks
      if (stem[i].word.startsWith("peng")) {
        var l = stem[i].word.replace(/peng/gi, "")
        s.push(l)
      }
      // ./prefiks
      // konfiks
      else if (stem[i].word.startsWith("pel") && stem[i].word.endsWith("an")) {
        var l = stem[i].word.replace(/(pel|an)/gi, "")
        s.push(l)
      }
      else if (stem[i].word.startsWith("pem") && stem[i].word.endsWith("an")) {
        var l = stem[i].word.replace(/(pem|an)/gi, "")
        s.push(l)
      }
      else if (stem[i].word.startsWith("pe") && stem[i].word.endsWith("an")) {
        var l = stem[i].word.replace(/(pe|an)/gi, "")
        s.push(l)
      }
      // ./konfiks
      // suffiks
      else if (stem[i].word.endsWith("nya") || stem[i].word.endsWith("kan")) {
        var l = stem[i].word.replace(/(nya|kan)/gi, "")
        s.push(l)
      }
      // ./suffiks
      else {
        s.push(stem[i].word)
      }
    }
    else if (stem[i].visible == "1") {
      if (stem[i].word.endsWith("nya") || stem[i].word.endsWith("kan")) {
        var l = stem[i].word.replace(/(nya|kan)/gi, "")
        s.push(l)
      }
      else {
        s.push(stem[i].word)
      }
    }
  }
console.log(s);
}
