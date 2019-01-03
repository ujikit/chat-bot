var fs = require("fs")
var data = ["nama lengkap pegawai","jenis kelamin pegawai","alamat rumah pegawai","nomor telepon pegawai","nomor induk pegawai","nomor telepon siswa","nomor induk siswa","alamat rumah siswa","tempat lahir siswa","tanggal lahir siswa","nama ayah siswa","nama ibu siswa","alamat orangtua siswa","pekerjaan ayah siswa","pekerjaan ibu siswa","nama wali siswa","pekerjaan wali siswa","alamat wali siswa","detail pembayaran siswa","daftar pengampu mata pelajaran kelas","daftar nama siswa kelas","nama lengkap siswa","daftar kelas dan wali kelas","nomor induk nasional siswa","daftar pengampu mata pelajaran","nomor telepon orangtua siswa"]

var data_baru = []
for (var i = 0; i < data.length; i++) {
  var part_array = data[i]
  var split_part_array = part_array.split(" ")
  data_baru.push(split_part_array)
  // console.log(split_part_array);
  // return 0
}

var words = []
for (var i = 0; i < data_baru.length; i++) {
  for (var j = 0; j < data_baru[i].length; j++) {
    words.push(data_baru[i][j])
  }
}

uniqueWord = words.filter(function(item, pos) {
  return words.indexOf(item) == pos;
})

// var uniqueWord = ["tes", "hoya"]
var possible = {}
for (var i = 0; i < uniqueWord.length; i++) {
  var word = uniqueWord[i]
  var permutation = getPermutations(word);
  var result = process(word, permutation)
  possible[uniqueWord[i]] = result;
  return 0
  fs.writeFileSync("data.json", JSON.stringify(possible))
}
var tes = fs.readFileSync("data.json")
console.log(tes.root.length);

function getPermutations(string) {
  var results = [];
  if (string.length === 1) {
    results.push(string);
    return results;
  }

  for (var i = 0; i < string.length; i++) {
    var firstChar = string[i];
    var otherChar = string.substring(0, i) + string.substring(i + 1);
    var otherPermutations = getPermutations(otherChar);

    for (var j = 0; j < otherPermutations.length; j++) {
      results.push(firstChar + otherPermutations[j]);
    }
  }
  return results;
}

function process (string, permutation) {
  var divide = Math.floor(string.length/2)
  var asd = string.substring(divide,0)
  var news = []
  for (var i = 0; i < permutation.length; i++) {
    if (permutation[i].startsWith(asd)) {
      news.push(permutation[i])
    }
  }
  return news
}

// output
// {
//   "tes":["tes","tse"],
//   "hoya":["hoya","hoay","hyoa","hyao","haoy","hayo","ohya","ohay","oyha","oyah","oahy","oayh"]
// }
