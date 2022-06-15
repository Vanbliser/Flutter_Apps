import 'dart:async';

import 'package:flutter/material.dart';

import 'mixins/api_delete_page_mixin.dart';
import 'models/album.dart';

class ApiDeletePage extends StatefulWidget {
  const ApiDeletePage({Key? key}) : super(key: key);

  @override
  _ApiDeletePageState createState() => _ApiDeletePageState();
}

class _ApiDeletePageState extends State<ApiDeletePage> {
  late Future<Album> _futureAlbum;

  @override
  void initState() {
    super.initState();
    _futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delete Data Example'),
      ),
      body: Center(
        child: FutureBuilder<Album>(
          future: _futureAlbum,
          builder: (context, snapshot) {
            // If the connection is done,
            // check for response data or an error.
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(snapshot.data?.title ?? 'Deleted'),
                    ElevatedButton(
                      child: const Text('Delete Data'),
                      onPressed: () {
                        setState(() {
                          _futureAlbum =
                              deleteAlbum(snapshot.data!.id.toString());
                        });
                      },
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
