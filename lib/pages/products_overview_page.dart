import 'package:flutter/material.dart';

import 'package:shop/components/product_item.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';

class ProductsOverview extends StatelessWidget {
  final List<Product> loadedProducts = dummyProducts;
  ProductsOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Minha Loja',
          style: TextStyle(
            color: Colors.white, // Define a cor branca para o texto
          ),
        )),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      //Além de ter o espaço do Grid.
      //O Padding vai servir para o espaçamento interno.
      //Descolando os itens das laterais.
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        // PRECISO DIZER a qtd de itens que o meu GRID VAI RENDERIZAR, PQ SE NAO ELE VAI RENDERIZAR UMA LISTA INFINITA
        // Para isso eu uso a propriedade "ItemCount",
        // E apartir da lista eu posso retornar a qtd de elementosQue estão na lista
        itemCount: loadedProducts.length,
        // Sliver é quando voce tem uma area que Scroll. Uma area que pode ser "rolável".
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //Definindo quantos elementos eu quero exibir por linha.
          // Nesse caso, quero exibir dois protudos por linha.
          crossAxisCount: 2,
          // Dimensão de cada elemento(Em relação a largura e altura)
          childAspectRatio: 3 / 2,
          // Para ele ter um espaço no eixo cruzado de 10.
          crossAxisSpacing: 10,
          // Para ele ter um espaço no eixo principal de 10.
          mainAxisSpacing: 10,
        ),
        // Eu vou dizer como ele vai construir cada elemento dentro da GridView.
        // Vou passar uma função com o contexto em que vai receber o indice.
        // Nessa versão inicial, eu vou renderizar passando apenas o título.
        itemBuilder: (ctx, i) => ProductItem(product: loadedProducts[i]),
      ),
    );
  }
}
