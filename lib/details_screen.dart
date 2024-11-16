import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Map<String, dynamic> movieDetails;

  const DetailsScreen({super.key, required this.movieDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movieDetails['show']['name'] ?? 'Movie Details'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    movieDetails['show']['image'] != null
                        ? movieDetails['show']['image']['medium']
                        : 'https://via.placeholder.com/150',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                movieDetails['show']['name'] ?? 'N/A',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                movieDetails['show']['summary'] != null
                    ? movieDetails['show']['summary']
                    .replaceAll(RegExp(r'<[^>]*>'), '')
                    : 'No summary available.',
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 16),
              Text(
                'Language: ${movieDetails['show']['language'] ?? 'N/A'}',
                style: const TextStyle(color: Colors.white70),
              ),
              Text(
                'Genres: ${movieDetails['show']['genres']?.join(', ') ?? 'N/A'}',
                style: const TextStyle(color: Colors.white70),
              ),
              Text(
                'Premiered: ${movieDetails['show']['premiered'] ?? 'N/A'}',
                style: const TextStyle(color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

