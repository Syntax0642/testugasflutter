import 'package:flutter/material.dart';
import 'package:latihan_3/Siswa.dart';

class SiswaHome extends StatefulWidget {
  const SiswaHome({super.key});

  @override
  State<SiswaHome> createState() => _SiswaHomeState();
}

class _SiswaHomeState extends State<SiswaHome> {

  List<Siswa> murid  = [];
  
  void initState(){
    super.initState();
    
    murid = [
      Siswa ("Aan Kurniawan", "kurniadi@gmail.com","0069484185","04954","assets/images/profile.png"),
      Siswa ("Aaron Ikhwan Saputra", "aarongans@gmail.com", "0076242831", "04955","assets/images/profile.png"),
      Siswa ("Acaryanandana Alif Fajar", "fajarnando@gmail.com", "0073310910","04956","assets/images/profile.png"),
      Siswa ("Altan Assyifa Naura Putra", "altangbu@gmail.com", "0062134722","04957","assets/images/profile.png"),
      Siswa ("Alysa Oktavia Ramadhani", "alysa123@gmail.com" ,"0068718735","04958", "assets/images/profile.png"),
      Siswa ("Amanda Rizquita Jamila", "amanda123@gmail.com" ,"0077695332","04959", "assets/images/profile.png"),
      Siswa ("Amelia Salsabila Rahayu" ,"amelia123@gmail.com",'0077445904', "04960" ,"assets/images/profile.png"),
      Siswa ("Aufa Najid Mujtaba " ,"aufa123@gmail.com", "0061690935", "04961" ,"assets/images/profile.png"),
      Siswa ("Aulia Putri Wulandari", "aulia123@gmail.com","0074401038","04962", "assets/images/profile.png"),
      Siswa ("Ayla Syafa Syahira", "ayla123@gmail.com", "0078905330", "04963", "assets/images/profile.png"),
      Siswa ("Calvin Aprilio Haryanto" ,"calvin123@gmail.com", "0072839732", "04964", "assets/images/profile.png"),
      Siswa ("Danish Ardiyanta Rizqy Pramuditya", "danish123@gmail.com", "0136672377" ,"04965", "assets/images/profile.png"),
      Siswa ("Eureka Ahadyan Ilhamy" ,"eureka123@gmail.com" ,"0071452660", "84966", "assets/images/profile.png"),
      Siswa ("Fardan Athilla Haidar" ,"fardan123@gmail.com" ,"0079271519", "04967", "assets/images/profile.png"),
      Siswa ("Filemon Diwangkara Bani Saptaji", "filemon123@gmail.com", "0073377868" ,"04968", "assets/images/profile.png"),
      Siswa ("Haidar Bahzi" ,"haidar123@gmail.com", "0077867814", "04969", "assets/images/profile.png"),
      Siswa ("Ilhami Rizqy Romadzoni Astiko", "ilhami123@gmail.com" ,"0066061029", "04970" ,"assets/images/profile.png"),
      Siswa ("Kenneth Pangestu", "kenneth123@gmail.com", "0062325290","04971", "assets/images/profile.png"),
      Siswa ("Maida Hesti", "maida123@gmail.com", "0061793685","04972", "assets/images/profile.png"),
      Siswa ("Mirza Zulfadhli Amin", "mirza123@gmail.com", "0078903050","04973", "assets/images/profile.png"),
      Siswa ("Mohamad Robani Izzudin Daffa", "robani123@gmail.com", "0075051180", "84974" ,"assets/images/profile.png"),
      Siswa ("Muhammad Aifan Al-Haedar" ,"aifan123@gmail.com", "0072117919","04975", "assets/images/profile.png"),
      Siswa ("Muhammad Dhyandra Arya Dinata","dhyandra123@gmail.com" ,"0062714913","04976", "assets/images/profile.png"),
      Siswa ("Muhammad Khaisar Attaullah" ,"khaisar123@gmail.com" ,"0072106570","04977", "assets/images/profile.png"),
      Siswa ("Muhammad Zikrinayah" ,"zikri123@gmail.com", "0073271821" ,"04978", "assets/images/profile.png"),
      Siswa ("Nabil Asshobieb", "nabil123@gmail.com", "0079303456","04979", "assets/images/profile.png"),
      Siswa ("Nadia Salsabila Ibrahim", "nadia123@gmail.com", "0077296912","04980", "assets/images/profile.png"),
      Siswa ("Nyoman Deka Yatha Mahesvara", "nyoman123@gmail.com", "0076687699","04981", "assets/images/profile.png"),
      Siswa ("Pandu Sabdanabi" ,"pandu123@gmail.com" ,"0149504553" ,"04982" ,"assets/images/profile.png"),
      Siswa ("Raffiano Ardian Ariwibowo", "raffiano123@gmail.com", "0078843737","04983", "assets/images/profile.png"),
      Siswa ("Rafi Haiqal Fiqiah" ,"rafi123@gmail.com" ,"0077248110","04984", "assets/images/profile.png"),
      Siswa ("Roja Ridho Robbihi", "roja123@gmail.com", "0078419638", "04985", "assets/images/profile.png"),
      Siswa ("Shifana Lutfi Fuad", "shifana123@gmail.com", "0082661755"," 04986","assets/images/profile.png"),
      Siswa ("Vania Aisha Rohmawati", "vania123@gmail.com", "0073071665","04988","assets/images/profile.png"),
      Siswa ("Wayangseno Lintang Kusummo", "wayangseno123@gmail.com", "0079384457","04989","assets/images/profile.png"),
      Siswa ("Yakaria Yahya", "yakaria123@gmail.com", "0078835724","04990","assets/images/profile.png"),
      Siswa ("Zidni Fikri As Sidqi", "zidnos123@gmail.com", "0076704002","04991","assets/images/profile.png")
    ];
  }

  Widget CardSiswa(Siswa siswa){
    return Container(
        width: 300,
        margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
    BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 3,
    blurRadius: 7,
    offset: Offset(0, 3),
    ),
    ],
    color: Colors.white,
    ),
      child: Column(
        children: [
        CircleAvatar(
        radius: 40,
        backgroundImage: AssetImage('assets/profile.png'), // Replace with your avatar image
      ),
      SizedBox(height: 10),
      Text(
        siswa.nama,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
          SizedBox(height: 5),
          Text("NIS: ${siswa.NIS}"),
          Text("NISN: ${siswa.NISN}"),
    ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Data Murid Siswa PPLG 1"),
      ),
      body: ListView.builder(
          itemBuilder: (BuildContext context, int index){Siswa siswaPage = murid[index];
            return CardSiswa(siswaPage);
            },
          itemCount: murid.length,
      ),
    );
  }
}
