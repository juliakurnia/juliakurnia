import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Biodata Saya';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(image: 'images/julia.jpeg'),
              TitleSection(name: 'Nama   : Julia Kurnia Mubarokah', NIM: 'NIM      : STI202102363', location: 'Alamat : Jatisaba,Purbalingga, Jawa Tengah', tempatlahir: 'Tempat Lahir : Purbalingga', tanggallahir: 'Tanggal Lahir : 2 Juli 2003', ),
              TextSection(description: 'Saya merupakan mahasiswa semester 6 Prodi Teknik Informatika, saya membuat projek ini untuk memenuhi Ulangan Tengah Semester MataKuliah Mobile Progremming Lanjut dengan Dosen Pengampu Bapak Amin Sholeh, M.Kom'),
              ButtonSection(),
            ],
          )
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.NIM,
    required this.location,
    required this.tempatlahir,
    required this.tanggallahir,
  });

  final String name;
  final String NIM;
  final String location;
  final String tempatlahir;
  final String tanggallahir;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  NIM,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
               Text(
                  tempatlahir,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ), 
                Text(
                  tanggallahir,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          /*3*/
        ],
      ),
    );
  }
}
class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.label,
    required this.icon,
  });

  final Color color;
  final String label;
   final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 200,
      height: 280,
      fit: BoxFit.cover,
    );
  }
}
