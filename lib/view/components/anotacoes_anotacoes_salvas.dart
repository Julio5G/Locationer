import 'package:flutter/material.dart';

class AnotacoesSalvas extends StatefulWidget {
  const AnotacoesSalvas({super.key});

  @override
  State<AnotacoesSalvas> createState() => _AnotacoesSalvasState();
}

class _AnotacoesSalvasState extends State<AnotacoesSalvas> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Anotações salvas',
          style: TextStyle(
            fontSize: 24, 
            color: Colors.white
            )
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.37,           
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                                        
                      },
                      child: const Text(
                        'Anotação 1',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                                        
                      },
                      child: const Text(
                        'Como configurar o Flutter',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                                        
                      },
                      child: const Text(
                        'Como configurar o Windows Server',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}