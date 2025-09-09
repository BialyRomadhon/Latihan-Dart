import 'package:flutter/material.dart';

class TutorialColumn extends StatelessWidget {
  const TutorialColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tutorial Column"),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 16),
              CircleAvatar(
                radius: 48,
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                "Yarrreeeuuu",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              const Text(
                "Bakso Balap",
                style: TextStyle(fontSize: 20, color: Colors.black54),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Tombol ditekan!')),
                  );
                },
                icon: const Icon(Icons.thumb_up),
                label: const Text('Like'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                  textStyle: const TextStyle(fontSize: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: const [
                      Text(
                        'Tips UI/UX:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '• Gunakan padding yang cukup\n• Kombinasikan warna yang nyaman\n• Tambahkan gambar atau ikon\n• Berikan feedback pada aksi pengguna',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
