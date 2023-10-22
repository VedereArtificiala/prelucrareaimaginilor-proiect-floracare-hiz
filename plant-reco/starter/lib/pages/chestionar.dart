import 'package:flutter/material.dart';
import 'package:flutter_survey/flutter_survey.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Survey Demo',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.system,
      home: const MyHomePage(title: 'Flutter Survey'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  List<QuestionResult> _questionResults = [];
  final List<Question> _initialData = [
    Question(
      isMandatory: true,
      question: 'Sunteti la menopauza?',
      answerChoices: {
        'Da': null,
        'Nu': [
          Question(
            question: 'Aveti ciclu menstrual regulat?',
            isMandatory: true,
            answerChoices: const {'Da': null, 'Nu': null, 'Nu stiu': null},
          ),
          Question(
            question: 'Folositi pilule contraceptive?',
            isMandatory: true,
            answerChoices: const {'Da': null, 'Nu': null, 'Nu stiu': null},
          )
        ],
      },
    ),
    Question(
         isMandatory: true,
        singleChoice: true,
        question: 'Suferiti de o anumita patologie/boala?',
        answerChoices: {
          'Da': [
            Question(
              question: 'Lista patologii',
              isMandatory: true,
              singleChoice: false,
              answerChoices: const {
                'Vaginoza Bacteriana': null,
                'Endermetrioza': null,
                'Vaginita aeroba': null,
                'Candidoza': null,
                'Trichomoniaza': null
              },
            ),
          ],
          'Nu': null,
          'Nu stiu': null
        }),
         Question(
            question: 'Sunteti fumatoare?',
            isMandatory: true,
            answerChoices: const {'Da': null, 'Nu': null, 'Nu stiu': null},
          )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Survey(
            onNext: (questionResults) {
              _questionResults = questionResults;
            },
            initialData: _initialData),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.infinity,
            height: 56,
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 242, 142, 244), 
              ),
              child: const Text('Validate'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                    print(_initialData);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
