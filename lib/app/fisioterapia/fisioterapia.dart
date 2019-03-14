import 'package:flutter/material.dart';
import 'package:flutterando_create/common/primary_button.dart';
import 'package:flutterando_create/utils/sliver_appbar_delegate.dart';

class Fisioterapia extends StatelessWidget {

  SliverPersistentHeader makeHeader(String headerText) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: SliverAppBarDelegate(
          minHeight: 50,
          maxHeight: 80,
          child: Container(
            color: Colors.white,
            child: Center(
              child: Text(
                headerText,
                style: TextStyle(
                  color: Color.fromRGBO(255, 173, 6, 1),
                  fontSize: 16
                ),
              ),
            )
          ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: PrimaryButton(
        label: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              leading: Container(),
              elevation: 0,
              pinned: true,
              floating: false,
              expandedHeight: 200,
              backgroundColor: Color.fromRGBO(255, 255, 255, 1),
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  'Fisioterapia',
                  style: Theme.of(context).textTheme.title,
                ),
                background: Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 32),
                    child: Hero(
                      createRectTween: (Rect begin, Rect end) {
                        return RectTween(begin: begin, end: end);
                      },
                      tag: 'fisio',
                      child: Image.asset('assets/img/fisio.png', fit: BoxFit.fitHeight,)
                    ),
                  ),
                ),
              ),
            ),
            makeHeader('Definição'),
            SliverList(
              delegate: SliverChildListDelegate(
               <Widget>[
                SizedBox(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Fisioterapia é uma ciência da saúde aplicada ao estudo, diagnóstico, prevenção e tratamento de disfunções cinéticas funcionais de órgãos e sistemas. Ela estuda, diagnostica, previne e trata os distúrbios, entre outros, cinético-funcionais (da biomecânica e funcionalidade humana) decorrentes de alterações de órgãos e sistemas humanos. Sua gestão necessita do entendimento das estruturas e funções do corpo humano.',
                      style: Theme.of(context).textTheme.body1,
                    ),
                  ),
                ),
               ] 
              ),
            ),
            makeHeader('Origem e Objetivo'),
            SliverList(
              delegate: SliverChildListDelegate(
               <Widget>[
                 SizedBox(
                   child: Padding(
                     padding: EdgeInsets.all(16),
                     child: Text(
                        'Baseia-se na compreensão e no estudo das ciências biológicas e da saúde, fundamentando suas ações em mecanismos terapêuticos próprios, tais como, ciências morfológicas, ciências fisiológicas, patologia, bioquímica, biofísica, biomecânica, cinesia, além das disciplinas comportamentais e sociais. O objetivo desta área é preservar, manter, desenvolver ou restaurar (reabilitação) a integridade de órgãos, sistemas ou funções.',
                        style: Theme.of(context).textTheme.body1,
                      ),
                   ),
                 )
               ] 
              ),
            ),
            makeHeader('Fisioterapeuta'),
            SliverList(
              delegate: SliverChildListDelegate(
               <Widget>[
                 Padding(
                  padding: EdgeInsets.all(16),
                  child: Center(
                    child: Text(
                      'Fisioterapeuta é o profissional da área de saúde, a quem compete executar métodos e técnicas fisioterápicas, com a finalidade de restaurar, desenvolver e conservar a capacidade física do paciente',
                      style: Theme.of(context).textTheme.body1,
                    )
                  ),
                ),
                Container(height: 375,)
               ] 
              ),
            ),
          ],
        ),
      ),
    );
  }
}