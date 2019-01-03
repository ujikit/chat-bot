var tes = ["tes", "oya", "oya", "halo", "tes", "halo", "tes"]
uniqueArray = tes.filter(function(item, pos) {
    return tes.indexOf(item) == pos;
})
