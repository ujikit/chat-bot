var data = [ 'daftar pengampu mata pelajaran',
'nomor telepon pegawai',
'nomor induk pegawai',
'nomor telepon siswa',
'nomor telepon orang tua siswa',
'nomor telepon wali siswa',
  'daftar pengajar mata pelajaran',
  'nama lengkap pegawai',
  'jenis kelamin pegawai',
  'alamat rumah pegawai',
  'nomor induk siswa',
  'nomor induk nasional siswa',
  'alamat rumah siswa',
  'tempat lahir siswa',
  'tanggal lahir siswa',
  'nama ayah siswa',
  'nama ibu siswa',
  'alamat orangtua siswa',
  'pekerjaan ayah siswa',
  'pekerjaan ibu siswa',
  'nama wali siswa',
  'pekerjaan wali siswa',
  'alamat wali siswa',
  'detail pembayaran',
  'daftar kelas dan wali kelas',
  'jumlah siswa',
  'jumlah pegawai',
  'daftar pengampu mata pelajaran kelas',
  'daftar pengajar kelas',
  'daftar nama seluruh siswa kelas',
  'nama lengkap siswa' ]

var parse = "nomor telepon"
var parse2 = parse.split(" ")

var json = []
var jsonA = []
for (var i = 0; i < parse2.length; i++) {
  var regex = new RegExp(parse2[i],"gi")
  for (var j = 0; j < data.length; j++) {
    var asd = data[j].match(regex)
    if (asd !== null) { var d = 1 }
    else { var d = 0 }
    json.push(d)
  }
}

var tempArray = [];
for (index = 0; index < json.length; index += data.length) {
  myChunk = json.slice(index, index+data.length);
  tempArray.push(myChunk)
}

var tempMatchPerKata = []
for (var i = 0; i < data.length; i++) {
  for (var j = 0; j < tempArray.length; j++) {
    var s = tempArray[j][i]
    tempMatchPerKata.push(s)
  }
}

// Menjadikan Array diPecah Jadi 3
var tempArrayd = []
for (index = 0; index < tempMatchPerKata.length; index += parse2.length) {
  myChunk = tempMatchPerKata.slice(index, index+parse2.length);
  tempArrayd.push(myChunk)
}

// console.log();

var fix = {tes:[]}
for (var i = 0; i < tempArrayd.length; i++) {
  fix.tes.push
  ({
    [i]:  {
            "id" : i,
            "total_match" : tempArrayd[i].filter(i => i === 1).length,
            "kalimat" : data[i]
          }
  })
}

var totalMatch = []
for (var i = 0; i < fix.tes.length; i++) {
  totalMatch.push(fix.tes[i][i].total_match)
} // array | daftar total match kata pertanyaan degan seluruh kalimat


var max_match_kata = Math.max(...totalMatch) // array | mencari max pada array total match

if (max_match_kata == 0) {
  console.log("seasd");
  return false;
}

var filtered = totalMatch.filter((value) => {
  return value >= max_match_kata;
}); // array | mencari total seluruh total pada array yang siap diproses selanjutnya
console.log(filtered);
return 0

var aa = []
for (var i = 0; i < fix.tes.length; i++) {
  for (var j = 0; j < filtered.length; j++) {
    if (fix.tes[i][i].total_match == filtered[j]) {
      aa.push(fix.tes[i][i].kalimat)
    }
  }
} // pushArray | mencari total yang diketahui max nya dan siap di push untuk disajikan ke pengguna

var g = aa.filter(function(elem, index, self) { return index === self.indexOf(elem); })

var tempTotalKataTerSedikit = []
for (var i = 0; i < g.length; i++) {
  var kataa = g[i].split(" ")
  tempTotalKataTerSedikit.push(kataa.length)
}

var foundIndexPertanyaan = tempTotalKataTerSedikit.findIndex(function(element) {
  var fixIndexPertanyaan = Math.min(...tempTotalKataTerSedikit)
  return element == fixIndexPertanyaan;
})

console.log(g);
