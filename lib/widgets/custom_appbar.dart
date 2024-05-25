import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.black,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.search, color: Colors.white),
                onPressed: () {
                  // Acción para el icono de búsqueda
                },
              ),
              IconButton(
                icon: const Icon(Icons.favorite_border, color: Colors.white),
                onPressed: () {
                  // Acción para el icono de favoritos
                },
              ),
            ],
          ),
          const Text(
            "Mi Tiendita",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Cursive',
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'HOME',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'BLOG',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'COMPRAR',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.person_outline, color: Colors.white),
                onPressed: () {
                  // Acción para el icono de perfil
                },
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart_outlined, color: Colors.white),
                onPressed: () {
                  // Acción para el icono del carrito de compras
                },
              ),
              _buildDropdownMenu('V'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDropdownMenu(String title) {
    return PopupMenuButton<String>(
      onSelected: (String result) {
        // Acción al seleccionar un elemento del menú
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: 'Option 1',
          child: Text('* Cerrar Sesion'),
        ),
        const PopupMenuItem<String>(
          value: 'Option 2',
          child: Text('* Editar Perfil'),
        ),
      ],
      child: TextButton(
        onPressed: null,
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
