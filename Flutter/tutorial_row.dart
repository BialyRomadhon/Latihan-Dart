import 'package:flutter/material.dart';

class TutorialRow extends StatelessWidget {
  const TutorialRow({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'https://images.unsplash.com/photo-1513708927688-890a1b6e3b3a',
      'https://images.unsplash.com/photo-1503602642458-232111445657',
      'https://images.unsplash.com/photo-1465101046530-73398c7f28ca',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Commerce Demo'),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 220,
                child: PageView.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: NetworkImage(images[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  images.length,
                  (index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepPurple.withOpacity(0.3),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Sepatu Sneakers Keren',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Rp 350.000',
                style: TextStyle(fontSize: 20, color: Colors.deepPurple),
              ),
              const SizedBox(height: 16),
              const Text(
                'Sneakers kekinian dengan bahan premium, nyaman dipakai untuk aktivitas harian. Tersedia berbagai ukuran.',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              const SizedBox(height: 32),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Ditambahkan ke keranjang!'),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Tambah ke Keranjang',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  IconButton(
                    icon: const Icon(
                      Icons.favorite_border,
                      color: Colors.deepPurple,
                      size: 32,
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Ditambahkan ke favorit!'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
