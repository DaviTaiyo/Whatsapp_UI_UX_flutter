import 'package:flutter/material.dart';

class settingPage extends StatelessWidget {
  const settingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "images/profile1.jpg",
                        height: 65,
                        width: 65,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Programador',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            'Olá, estou usando o Whatsapp',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black45),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.key),
                ),
                title: Text(
                  'Conta',
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  'privacidade, segurança, trocar número',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.message),
                ),
                title: Text(
                  'Conversas',
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  'Bloqueio de contatos, mensagens temporárias',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.notifications),
                ),
                title: Text(
                  'Notificações',
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  'Mensagens, grupos, chamadas',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.circle_outlined),
                ),
                title: Text(
                  'Armazenamento e dados',
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  'uso de rede, donwloads automatico',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.help_outline_outlined),
                ),
                title: Text(
                  'Ajuda',
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  'Central de ajuda, termos de uso, politica e privacidade',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.people_alt),
                ),
                title: Text(
                  'Invite a Friend',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 60),
                child: Column(
                  children: [
                    Text(
                      'from',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text('Facebook', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
