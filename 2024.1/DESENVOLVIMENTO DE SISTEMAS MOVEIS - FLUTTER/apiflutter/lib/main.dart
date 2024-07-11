import 'package:apiflutter/screen/login_screen.dart';
import 'package:apiflutter/services/firebase/auth/firebase_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:apiflutter/services/character_service.dart';
import 'package:apiflutter/models/character.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'models/userModel.dart';
//VOLTAR NO MINUTO 38 PARA VALIDAÇÃO DA AUTH
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InitializeApp(),
      );
  }
}

class InitializeApp extends StatelessWidget {
  final FirebaseAuthService _auth = FirebaseAuthService();
  InitializeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UserModel>(stream: _auth.user, builder: (context, snapshot) {
      if(snapshot.connectionState ==ConnectionState.waiting){
        return const Center(child: CircularProgressIndicator(),
        );
      }

      return LoginPage();
      },
    );
  }
}


class CharacterListScreen extends StatefulWidget {
  @override
  _CharacterListScreenState createState() => _CharacterListScreenState();
}

class _CharacterListScreenState extends State<CharacterListScreen> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  late Future<List<Character>> _charactersFuture;
  late List<Character> _characters = [];
  late List<Character> _filteredCharacters = [];

  @override
  void initState() {
    super.initState();
    _charactersFuture = _loadCharacters();
  }

  Future<List<Character>> _loadCharacters() async {
    final service = CharacterService();
    _characters = await service.getCharacters();
    _filteredCharacters = _characters;
    return _characters;
  }

  _filterCharacters(String filter) {
    setState(() {
      _filteredCharacters = _characters
          .where((character) => character.name.toLowerCase().contains(filter.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listagem de personagens"),
        actions: [IconButton(onPressed: (){
          _auth.signOut();
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
        }, icon: Icon(Icons.logout))],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              onChanged: _filterCharacters,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Filtrar",
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder<List<Character>>(
              future: _charactersFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text("Erro: ${snapshot.error}"));
                } else {
                  return GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemCount: _filteredCharacters.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CharacterDetailScreen(
                                character: _filteredCharacters[index],
                              ),
                            ),
                          );
                        },
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                _filteredCharacters[index].image,
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                _filteredCharacters[index].name,
                                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
//CHARACTER DETAIL
class CharacterDetailScreen extends StatelessWidget {
  final Character character;

  CharacterDetailScreen({required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalhes do Personagem"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              character.image,
              height: 300,
              width: 300,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            Text(
              character.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
