import 'package:flutter/material.dart';

class User {
  final String name;
  final String avatar;
  final String phone;
  final String? status;
  final String? gender;
  final String? hobi;

  User(
      {required this.name,
      required this.avatar,
      required this.phone,
      this.status,
      this.gender,
      this.hobi});
}

List<User> listUser = [
  User(
      name: 'Muhammad Brimstone',
      avatar:
          'https://i1.wp.com/champions.my.id/wp-content/uploads/2021/02/brimstone.png?fit=997%2C565&ssl=1',
      phone: '085155325299',
      status: 'Sudah Menikah',
      gender: 'Laki-Laki',
      hobi: 'Bakar orang'),
  User(
      name: 'Udin Flawless',
      avatar:
          'https://static.wikia.nocookie.net/valorant/images/5/53/Breach_icon.png',
      phone: '085436852158',
      status: 'Belum Menikah',
      gender: 'Laki-Laki',
      hobi: 'Stun Orang'),
  User(
      name: 'Riska Sachel',
      avatar:
          'https://static.wikia.nocookie.net/valorant/images/3/33/Skye_icon.png',
      phone: '085157855246',
      status: 'Belum Menikah',
      gender: 'Perempuan',
      hobi: 'Makan Soul'),
  User(
      name: 'Asep Botfrag',
      avatar:
          'https://dak.gg/valorant/images/agents/small_portraits/phoenix.png?20201008',
      phone: '085784267858',
      status: 'Sudah Menikah',
      gender: 'Laki-Laki',
      hobi: 'Bikin KageBunshin'),
  User(
      name: 'Indra Scatter',
      avatar:
          'https://titles.trackercdn.com/valorant-api/agents/7f94d92c-4234-0a36-9646-3a87eb8b5c89/displayicon.png',
      phone: '0898554658525',
      status: 'Belum Menikah',
      gender: 'Laki-Laki',
      hobi: 'Zeus yang jamin')
];

void addContact(User user) {
  listUser.add(user);
}
