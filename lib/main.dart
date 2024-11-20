import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'l1plya shop',
      home: ProductListScreen(),
    );
  }
}

class Product {
  final String name;
  final String price;
  final String discountPrice;
  final String imageUrl;
  final List<String> description;

  Product({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
    this.discountPrice = '',
  });
}

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'AMD Ryzen 5 5600 BOX',
      price: '12 999 ₽',
      discountPrice: '11 999 ₽',
      imageUrl: 'https://c.dns-shop.ru/thumb/st1/fit/320/250/b4f335fe61275d19f1434e767e7d70e7/2be30add633ca3bbfb31fbedac61071833fcb5311690f5f32ca0034561410536.jpg',
      description: [
        'Процессор AMD Ryzen 5 5600 – 6-ядерный чипсет с базовой тактовой частотой 3.5 ГГц, который способен одновременно обрабатывать до 12 вычислительных потоков информации и обеспечивать компьютерную сборку бесперебойной работой в режиме многозадачности. Модель обладает свободным множителем, благодаря которому можно изменять тактовую частоту без изменений частоты системной шины. Процессор AMD Ryzen 5 5600 поддерживает работу с оперативной памятью DDR4 объемом до 128 ГБ. В комплектацию входит система охлаждения и термоинтерфейс.'
      ],
    ),
    Product(
      name: 'AMD Ryzen 5 5600 OEM',
      price: '12 499  ₽',
      imageUrl: 'https://c.dns-shop.ru/thumb/st4/fit/320/250/4f62062c2f24a1a4f25fce78b21d79ba/a60d568636c393c611792fb99f68dd97fb6fe3de90e8bd6f085c7c321e9e32b0.jpg',
      description: [
        'Процессор AMD Ryzen 5 5600X OEM с поддержкой технологии виртуализации обеспечит игровому ПК высокую мощность и производительность. В построении архитектуры чипа применялся 7-нм техпроцесс, благодаря чему оптимизирована скорость выполнения всех операций и энергопотребление. 6 ядер, работающие в 12-поточном режиме, и кэш-память L3 на 32 МБ эффективно взаимодействуют друг с другом, что позволило сократить до минимума задержки обмена данными. Поэтому игрок сможет быстро и четко реагировать на происходящее в игре.'
        'Рабочая частота процессора AMD Ryzen 5 5600X OEM автоматически повышается с 3.7 до 4.6 ГГц при возрастании нагрузки. За счет свободного множителя есть возможность увеличивать частоту до более высокого значения через утилиту AMD Ryzen Master. Контроллер PCI-E 4.0 обеспечивает высокую скорость передачи данных при подключении модулей памяти, видеокарт и других устройств. Процессор поддерживает работу модулей ОЗУ DDR4-3200, объем которых составляет 128 ГБ.'
      ],
    ),
    Product(
      name: 'AMD Ryzen 7 3700X OEM',
      price: '13 499 ₽',
      imageUrl: 'https://c.dns-shop.ru/thumb/st4/fit/500/500/a82971c60b48db822892b0afabf3738a/d18a3d7014f0c3290bcee6491c444640e8d6456022a06d246e7c9b52864c2ca6.jpg.webp',
      description: [
        'Процессор AMD Ryzen 7 3700X OEM отличается высокой мощностью и производительностью, что позволит использовать его для оснащения игровых компьютеров. Выполненный на основе 7-нм техпроцесса, чип имеет 8 ядер Matisse. Они обрабатывают данные в 16 потоков, благодаря чему поддерживается высокая скорость при решении рабочих задач и выполнении действий в играх. Частота процессора варьируется в зависимости от нагрузки в пределах 3.6-4.4 ГГц. Свободный множитель позволит еще увеличить данный показатель.'
        'К процессору AMD Ryzen 7 3700X OEM можно подключать оперативную память формата DDR4, которая обладает объемом 128 ГБ и рабочей частотой 3200 МГц. Контроллер PCI-E 4.0 обеспечивает быстрый обмен данными между процессором и подключенными модулями. Поддерживаемая технология виртуализации позволяет оптимизировать мощность процессора, используя эмуляторы разных операционных систем и игр. Тепловыделение на уровне 65 Вт предусматривает применение стандартной системы охлаждения.'],
    ),
    Product(
      name: 'AMD Ryzen 7 5700X OEM',
      price: '15 999 ₽',
      imageUrl: 'https://c.dns-shop.ru/thumb/st4/fit/320/250/eb7a5dc237931d815d41b18d50b7a90a/cd544c1a7746cb99b220d5c90b1a2107a94a08112077e6015d2040a83afae4c5.jpg',
      description: [
        'Процессор AMD Ryzen 7 5700X OEM является одним из флагманских устройств от AMD. Он основан на архитектуре Zen 3. Конфигурация модели представляет собой 8-ядерное и 16-потоковое устройство. Ее рабочая частота составляет 3.4 ГГц, а максимальная – 4.6 ГГц в режиме Turbo. AMD Ryzen 7 5700X OEM поддерживает сокет AM4, а также использует технологии Precision Boost 2 и Precision Boost Overdrive для ускорения частоты работы в зависимости от требований задач. Процессор поддерживает память типа DDR4. Это обеспечивает ему высокую пропускную способность и возможность подключения периферийных устройств.'],
    ),
    Product(
      name: 'AMD Ryzen 7 9700X OEM',
      price: '45 999 ₽',
      imageUrl: 'https://c.dns-shop.ru/thumb/st1/fit/320/250/8fce57fc3cbb7bc5208e4ce8c120670e/f21f8b4c09300b4f8db8b2af008e53729a802c2a2d68c5c2c710ab618c045b5a.jpg',
      description: [
        'AMD Ryzen 7 9700X – десктопный процессор для сокета AM5 с 8 ядрами и 16 потоками. Модель рассчитана на сборку игрового компьютера для домашней системы. Благодаря поддержке технологии Turbo Core процессор может автоматически разгоняться до частоты 5500 МГц. Чип оснащен интегрированной графикой Radeon Graphics и кэшем 3-го уровня 32 МБ.'],
    ),
    Product(
      name: 'AMD Ryzen 9 9900X OEM',
      price: '65 799 ₽',
      imageUrl: 'https://c.dns-shop.ru/thumb/st1/fit/320/250/508fd979fe31de61ab4d63cecebcab0e/87245e841b0fb5021303be9d803b288e8880ac07cccf3f7e01d779b8a6a7e828.jpg',
      description: [
        'Процессор AMD Ryzen 9 9900X основан на архитектуре Zen 5 и предлагает высокую производительность и эффективность. Устройство имеет 12 ядер и 24 потока, что делает его оптимальным выбором для многозадачных процессов, игр и других требовательных приложений. Частота его работы способна достигать 5.6 ГГц.'],
    ),
    Product(
      name: 'Product 1',
      price: '',
      imageUrl: '',
      description: ['This is the description of Product 1.'],
    ),
    Product(
      name: 'Product 1',
      price: '',
      imageUrl: '',
      description: ['This is the description of Product 1.'],
    ),
    Product(
      name: 'Product 1',
      price: '',
      imageUrl: '',
      description: ['This is the description of Product 1.'],
    ),
    Product(
      name: 'Product 1',
      price: '',
      discountPrice: '',
      imageUrl: '',
      description: ['This is the description of Product 1.'],
    ),
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Процессоры AMD', style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold,))),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 0.75,
        ),
        padding: const EdgeInsets.all(8.0),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(product: products[index]),
                ),
              );
            },
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
                      child: Image.network(
                        products[index].imageUrl,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          products[index].name,
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 4.0),
                        products[index].discountPrice.isNotEmpty
                            ? Row(
                          children: [
                            Text(
                              products[index].price,
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            SizedBox(width: 8.0),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: Text(
                                products[index].discountPrice,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )
                            : Text(
                          products[index].price,
                          style: TextStyle(fontSize: 14.0, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(product.imageUrl),
            SizedBox(height: 16.0),
            Text(
              product.name,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            product.discountPrice.isNotEmpty
                ? Row(
              children: [
                Text(
                  product.price,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                SizedBox(width: 8.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Text(
                    product.discountPrice,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
                : Container(
              padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Text(
                product.price,
                style: TextStyle(fontSize: 18.0, color: Colors.black),
              ),
            ),
            SizedBox(height: 16.0),
            RichText(
              text: TextSpan(
                children: product.description.map((paragraph) {
                  return TextSpan(
                    text: '$paragraph\n\n',
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}