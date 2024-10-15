import 'package:flutter/material.dart';

class PencarianPage extends StatelessWidget {
  const PencarianPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pencarian"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width:
                      150, // Menentukan lebar yang konsisten untuk semua label
                  child: Text(
                    "Akun sosial media",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black, // Mengubah warna teks menjadi hitam
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Field Hastag / Topik / Event
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width:
                      150, // Menentukan lebar yang konsisten untuk semua label
                  child: Text(
                    "Hastag / Topik / Event",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black, // Mengubah warna teks menjadi hitam
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Field Informasi Pribadi
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width:
                      150, // Menentukan lebar yang konsisten untuk semua label
                  child: Text(
                    "Informasi pribadi (Nama / Nomor Telepon / Email)",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black, // Mengubah warna teks menjadi hitam
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),

            Center(
              child: Text(
                "Platform Sumber Data",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Mengubah warna teks menjadi hitam
                ),
              ),
            ),
            SizedBox(height: 20),

            // Platform buttons with icons
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.facebook, color: Colors.white),
              label: Text("Facebook"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Facebook blue color
                minimumSize: Size(double.infinity, 50), // Panjang button
                foregroundColor: Colors.white, // Warna teks
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.video_library, color: Colors.white),
              label: Text("Tiktok"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Tiktok black color
                minimumSize: Size(double.infinity, 50), // Panjang button
                foregroundColor: Colors.white, // Warna teks
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.camera_alt, color: Colors.white),
              label: Text("Instagram"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent, // Instagram pink color
                minimumSize: Size(double.infinity, 50), // Panjang button
                foregroundColor: Colors.white, // Warna teks
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.chat, color: Colors.white),
              label: Text("X/Twitter"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue, // Twitter blue color
                minimumSize: Size(double.infinity, 50), // Panjang button
                foregroundColor: Colors.white, // Warna teks
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.ondemand_video, color: Colors.white),
              label: Text("Youtube"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Youtube red color
                minimumSize: Size(double.infinity, 50), // Panjang button
                foregroundColor: Colors.white, // Warna teks
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.business_center, color: Colors.white),
              label: Text("LinkedIn"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[800], // LinkedIn blue color
                minimumSize: Size(double.infinity, 50), // Panjang button
                foregroundColor: Colors.white, // Warna teks
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: ElevatedButton(
            onPressed: () {
              // Tindakan yang dilakukan saat tombol ditekan
              print("Tombol Selanjutnya ditekan");
            },
            child: Text(
              "Selanjutnya",
              style: TextStyle(color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 50),
              // Warna teks
            ),
          ),
        ),
      ),
    );
  }
}
