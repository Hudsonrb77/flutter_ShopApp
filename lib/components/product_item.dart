import 'package:flutter/material.dart';
import '../components/utils/app_routes.dart';
import '../models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      //ClipRRect: É usado para criar uma região retangular com bordas arredondadas.
      borderRadius: BorderRadius.circular(10),

      //GridTile: Representa uma célula em uma grade.
      child: GridTile(
        //GridTileBar: Barra localizada abaixo do conteúdo principal em um GridTile.
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
          ),
          title: Text(product.title),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ),
        child: GestureDetector(
          child: Image.network(
            product.imageUrl, // Exibe a imagem do produto a partir da URL
            fit: BoxFit.cover,
          ),
          onTap: () {
            // Quando o item é tocado, a navegação para outra página é acionada.
            Navigator.of(context).pushNamed(
              AppRoutes.product_detail,
              arguments: product,
            );
          },
        ),
      ),
    );
  }
}
