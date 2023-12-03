import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  List<String> _dataList = [
    "Kebutuhan Pokok",
    "Elektronik",
    "Pakaian",
    "Sepatu",
    "Produk Kecantikan",
    "Alat Rumah Tangga",
    "Perabotan",
    "Perlengkapan Olahraga",
    "Buku",
    "Hiburan",
    "Pelayanan Makan",
    "Layanan Perjalanan",
    "Kelas Kebugaran",
    "Produk Kesehatan",
    "Kartu Hadiah",

  ];
  List<String> _searchResultList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'images/homebg.png'), // Ganti dengan path ke gambar latar belakang
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: _searchController,
                  onChanged: _onSearchTextChanged,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                  ),
                ),
                SizedBox(height: 16),
                Expanded(
                  child: _buildSearchResults(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _onSearchTextChanged(String text) {
    _searchResultList.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }

    _dataList.forEach((item) {
      if (item.toLowerCase().contains(text.toLowerCase())) {
        _searchResultList.add(item);
      }
    });

    setState(() {});
  }

  Widget _buildSearchResults() {
    return ListView.builder(
      itemCount: _searchResultList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(_searchResultList[index]),
          // Tambahkan logika atau navigasi sesuai kebutuhan
          onTap: () {
            print('Item tapped: ${_searchResultList[index]}');
          },
        );
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SearchPage(),
  ));
}
