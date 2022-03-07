void main() {
  List utama = [
    ['Agung', 20],
    ['Yahuy', 22],
    ['Rafiq', 21],
    ['Ekurs', 23]
  ];

  var student = {};
  for (var i in utama) {
    student[i[0]] = i[1];
  }
  print(student);

  for (var j in student.keys) {
    print('$j Berumur ${student[j]}');
  }
}
