import 'package:flutter/material.dart';

import 'package:anylist/utils/bases/base_model.dart';

class DashboardBloc extends BaseModel {
  DashboardBloc({
    required BuildContext context,
  }) : _context = context;

  final BuildContext _context;

  void showPopupMenu() {
    showMenu(
      context: _context,
      position: const RelativeRect.fromLTRB(1000.0, 80.0, 0.0, 0.0),
      items: <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: 'Cerrar Sesión',
          child: Text('* Cerrar Sesión'),
        ),
        const PopupMenuItem<String>(
          value: 'Editar Perfil',
          child: Text('* Editar Perfil'),
        ),
      ],
    ).then(
      (String? value) {
        if (value != null) {
          // Acción al seleccionar un elemento del menú
          switch (value) {
            case 'Cerrar Sesión':
              // Implementar lógica de cerrar sesión
              break;
            case 'Editar Perfil':
              // Implementar lógica de editar perfil
              break;
          }
        }
      },
    );
  }
}
