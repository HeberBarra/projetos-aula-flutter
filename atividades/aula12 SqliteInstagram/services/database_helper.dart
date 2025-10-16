import 'dart:io';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import '../models/post.dart';

class DatabaseHelper {

  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static Database? _database;
  static const int _version = 1;
  static const String _dbName = 'instagram_db.db';

  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _dbName);

    return openDatabase(path, onCreate: _createDb, version: _version);
  }

  Future<void> _createDb(Database db, int version) async {
    await db.execute('''
      CREATE TABLE posts (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT NOT NULL,
        text TEXT NOT NULL,
        liked INTEGER NOT NULL
      )
    ''');
  }

  Future<List<Post>> getPosts() async {
    Database db = await instance.database;
    List<Map<String, dynamic>> posts = await db.query('posts', orderBy: 'id DESC');
    List<Post> postList = posts.isNotEmpty ?
      posts.map((item) => Post.fromMap(item)).toList() : [];

    return postList;
  }

  Future<int> addPost(Post newPost) async {
    Database db = await instance.database;
    return await db.insert('posts', newPost.toMap());
  }

  Future<int> removePost(int id) async {
    Database db = await instance.database;
    return await db.delete('posts', where: 'id = ?', whereArgs: [id]);
  }

  Future<int> updatePost(Post post) async {
    Database db = await instance.database;
    return await db.update('posts', post.toMap(), where: 'id = ?', whereArgs: [post.id]);
  }

}
