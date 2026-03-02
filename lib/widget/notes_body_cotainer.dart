import 'package:flutter/material.dart';

class NotesBodyCotainer extends StatelessWidget {
  const NotesBodyCotainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 217, 173, 41),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              "Flutter tips",
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),

            subtitle: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "You will be better when you focus i your dream",
                style: TextStyle(
                  color: Colors.black.withValues(alpha: 0.4),
                  fontSize: 20,
                ),
              ),
            ),
            trailing: Icon(Icons.delete, color: Colors.black, size: 30),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              "may 22 , 2025",
              style: TextStyle(
                color: Colors.black.withValues(alpha: 0.5),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
