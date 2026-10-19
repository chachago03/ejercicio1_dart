import 'dart:io';

class Contacto {
  String nombre;
  String telefono;

  Contacto(this.nombre, this.telefono);
}

void main() {
  List<Contacto> agenda = [];
  bool ejecutando = true;

  while (ejecutando) {
    print('\n--- Agenda de Contactos ---');
    print('1. Agregar Contacto');
    print('2. Ver Contactos');
    print('3. Buscar Contacto');
    print('4. Eliminar Contacto');
    print('5. Salir');

    stdout.write('Elige una opción: ');
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
  stdout.write('Ingrese el nombre: ');
  String nombre = stdin.readLineSync() ?? '';

  stdout.write('Ingrese el teléfono: ');
  String telefono = stdin.readLineSync() ?? '';

  if (nombre.trim().isEmpty || telefono.trim().isEmpty) {
    print('El nombre y el teléfono son obligatorios.');
  } else {
    agenda.add(Contacto(nombre.trim(), telefono.trim()));
    print('Contacto agregado correctamente.');
  }
  break;
      case '2':
        // La funcionalidad de listar se implementará
        break;
      case '3':
        // La funcionalidad de buscar se implementará
        break;
      case '4':
        // La funcionalidad de eliminar se implementará
        break;
      case '5':
        print('Saliendo de la agenda...');
        ejecutando = false;
        break;
      default:
        print('Opción no válida. Intenta de nuevo.');
    }
  }
}