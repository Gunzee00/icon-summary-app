import 'package:flutter/material.dart';
import 'package:icon_sumarry_app/views/screens/account_summary/pages/accountSummarryScreen.dart';

class PencarianPage extends StatelessWidget {
  const PencarianPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pencarian"),
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
                const SizedBox(
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
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Field Hastag / Topik / Event
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
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
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Field Informasi Pribadi
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
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
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            const Center(
              child: Text(
                "Platform Sumber Data",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Mengubah warna teks menjadi hitam
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Platform buttons with icons
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.facebook, color: Colors.white),
              label: const Text("Facebook"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Facebook blue color
                minimumSize: const Size(double.infinity, 50), // Panjang button
                foregroundColor: Colors.white, // Warna teks
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.video_library, color: Colors.white),
              label: const Text("Tiktok"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Tiktok black color
                minimumSize: const Size(double.infinity, 50), // Panjang button
                foregroundColor: Colors.white, // Warna teks
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt, color: Colors.white),
              label: const Text("Instagram"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent, // Instagram pink color
                minimumSize: const Size(double.infinity, 50), // Panjang button
                foregroundColor: Colors.white, // Warna teks
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.chat, color: Colors.white),
              label: const Text("X/Twitter"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue, // Twitter blue color
                minimumSize: const Size(double.infinity, 50), // Panjang button
                foregroundColor: Colors.white, // Warna teks
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.ondemand_video, color: Colors.white),
              label: const Text("Youtube"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Youtube red color
                minimumSize: const Size(double.infinity, 50), // Panjang button
                foregroundColor: Colors.white, // Warna teks
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.business_center, color: Colors.white),
              label: const Text("LinkedIn"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[800], // LinkedIn blue color
                minimumSize: const Size(double.infinity, 50), // Panjang button
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
              // print("Tombol Selanjutnya ditekan");
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AccountSummaryScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              // Warna teks
            ),
            child: Text(
              "Selanjutnya",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
