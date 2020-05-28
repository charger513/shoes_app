import 'package:flutter/material.dart';

class ZapatoSizePreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
          width: double.infinity,
          height: 430,
          decoration: BoxDecoration(
            color: Color(0xffFFCF53),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Column(
            children: <Widget>[
              // Zapato con sombra
              _ZapatoConSombra(),

              // Tallas
              _ZapatoTallas()
            ],
          )),
    );
  }
}

class _ZapatoTallas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _TallaZapatoCaja(7),
          _TallaZapatoCaja(7.5),
          _TallaZapatoCaja(8),
          _TallaZapatoCaja(8.5),
          _TallaZapatoCaja(9, isSeleccionado: true,),
          _TallaZapatoCaja(9.5),
        ],
      ),
    );
  }
}

class _TallaZapatoCaja extends StatelessWidget {
  final double numero;
  final bool isSeleccionado;

  const _TallaZapatoCaja(this.numero, {this.isSeleccionado = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        numero.toString().replaceAll('.0', ''),
        style: TextStyle(
            color: isSeleccionado ? Colors.white : Color(0xFFF1A23A),
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: isSeleccionado ? Color(0xFFF1A23A) : Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          if(isSeleccionado) BoxShadow(color: Color(0xFFF1A23A), blurRadius: 10, offset: Offset(0, 5))
        ]
      ),
    );
  }
}

class _ZapatoConSombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 20,
            right: 0,
            child: _ZapatoSombra(),
          ),
          Image(image: AssetImage('assets/imgs/azul.png')),
        ],
      ),
    );
  }
}

class _ZapatoSombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            boxShadow: [BoxShadow(color: Color(0xffEAA14E), blurRadius: 40)]),
      ),
    );
  }
}
