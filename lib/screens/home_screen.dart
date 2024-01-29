import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_group_project/models/product.dart';
import 'package:flutter_ecommerce_group_project/widgets/product_card.dart';
import 'package:flutter_ecommerce_group_project/screens/cart_screen.dart';
import 'package:flutter_ecommerce_group_project/screens/checkout_screen.dart';

void main() {
  runApp(const MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Shoes> allProducts = [
    Shoes(
      name: 'Madden Girl By Steve Madden Women William Knee High Boot',
      description: 'Amp up your look by wearing these women madden girl by Steve Madden William black dress boots. Constructed of polyurethane upper, these high heel boots are fashioned with square toe front, side zipper closure, soft interior lining, signature-printed footbed, covered block heel and long-lasting rubber outsole.',
      price: 87.98,
      imageUrl: 'assets/images/1.png', id: '1',
    ),
    Shoes(
      name: 'Crown Vintage Women Karina Chelsea Bootie',
      description: 'Make a luxurious fashion statement in these women Crown Vintage Karina Chelsea dove/stone taupe booties. Shaped with smooth suede upper, these these casual boots flaunt a round toe and pull-on design with twin gore elastic panels for snug fitting. Additional features include air and jersey lining, sock foam cushioned footbed for comfort, scalloped welt details, and a lugged TPR outsole with a chunky, sturdy block heel. This style is exclusive to Designer Brands Canada.',
      price: 49.97,
      imageUrl: 'assets/images/2.png', id: '2',
    ),

    Shoes(
      name: 'Steve Madden Revenge Ankle Bootie',
      description: 'With minimalist style, these women Steve Madden Revenge black boots add a classic elegance to your look. Made of micro suede & knit fabric upper, these ankle booties have breathable fabric and synthetic lining and set on sturdy block heel to lend modest elevation. Their textured synthetic sole gives optimum traction and extra stability.',
      price: 71.98,
      imageUrl: 'assets/images/3.png', id: '3',
    ),


    Shoes(
      name: 'Crown Vintage Women Karina Chelsea Bootie',
      description: 'Make a luxurious fashion statement in these women Crown Vintage Karina Chelsea pale brown booties. Shaped with rich suede upper, these these casual boots flaunt a round toe and pull-on design with twin gore elastic panels for snug fitting and extra style points. Additional features include air and jersey lining, sock foam cushioned footbed for comfort, scalloped welt details, and a lugged TPR outsole with a chunky, sturdy block heel. This style is exclusive to Designer Brands Canada.',
      price: 49.97,
      imageUrl: 'assets/images/4.png', id: '4',
    ),


    Shoes(
      name: 'STORM BY COUGAR Women Fume Waterproof Winter Boot',
      description: 'Brave the freezing temperatures with confidence in these womens Storm By Cougar Fume black winter boots. Designed with durable synthetic upper, these waterproof boots come with insulated faux fur cuff for ultimate warmth, adjustable lace-up closure for a tight fit, and lugged sole for a solid grip. These boots can withstand temperatures as low as -24°C. This style is exclusive to Designer Brands Canada.',
      price: 129.99,
      imageUrl: 'assets/images/5.png', id: '5',
    ),

    Shoes(
      name: 'Madden Girl By Steve Madden While Ankle Bootie',
      description: 'Look flawless from every angle in these womens madden girl by Steve Madden While brown pant booties. Donning smooth PU upper, these ankle booties have an on-trend square toe front and a convenient inside zipper closure for quick access. Features include polyurethane and jersey lining for a soft feel, gently padded PU footbed for daylong comfort, and a durable rubber outsole with wrapped block heel.',
      price: 59.98,
      imageUrl: 'assets/images/6.png', id: '6',
    ),


    Shoes(
      name: 'Elements Womens Waterproof Winter Ankle Boot',
      description: 'Looking chic this winter can be made possible with these women Elements waterproof black winter boots. Made of suede upper for a plush and luxe appeal. Besides the waterproof construction, these cold weather boots flaunt a traditional round toe front and fur-like trim to keep you toasty all day. An inside zipper closure offers quick access while the ultra grip outsole keeps you confidently going. This style is exclusive to Designer Brands Canada.',
      price: 76.98,
      imageUrl: 'assets/images/7.png', id: '7',
    ),
    Shoes(
      name: 'UGG Women Bailey Zip Mini Winter Boot',
      description: 'Be comfortable and stylish this winter sporting these women UGG Bailey Mini Zip chesnut winter boots. Featuring a premium suede upper, these boots feature a side zip closure, 17mm sheepskin lining for enhanced warmth, a plush UGGplush™ and lyocell padded footbed, and a durable Treadlite by UGG™ outsole.',
      price: 199.99,
      imageUrl: 'assets/images/8.png', id: '8',
    ),

    Shoes(
      name: 'Crown Vintage Women Elie Ankle Bootie',
      description: 'Stand out with these Crown Vintage Ellie black ankle booties. Crafted with a rhinestone-covered synthetic upper, inside zipper closure, almond toe, synthetic lining, lightly padded footbed, stacked heel and synthetic sole. This style is exclusive to Designer Brands Canada.',
      price: 83.97,
      imageUrl: 'assets/images/9.png', id: '9',
    ),


    Shoes(
      name: 'Elements Women Erika Waterproof Winter Combat Bootie',
      description: 'Solid looks and remarkable comfort make these women Elements Erika navy (blue) winter boots a must-have for the season. Crafted with durable faux leather upper, these round toe combat boots have a waterproof construction, lace-up front closure, and a quick-access inside zipper closure. A knit-like collar and fluffy tongue offer needed warmth, while the contrast welt stitching detail add to the style. A TPR rubber treaded outsole and block heel offer reliable support. This style is exclusive to Designer Brands Canada.',
      price: 109.99,
      imageUrl: 'assets/images/10.png', id: '10',
    ),

    Shoes(
      name: 'Call It Spring Hudsyn Combat Boot',
      description: 'Stay on-trend with these functional and fashionable women’s Call It Spring Hudsyn light grey combat boots. Crafted with synthetic upper, these 100% Peta-Approved Vegan casual booties have a round toe, lace-up front closure, and a quick access inside zipper closure. Along with a pull loop at rear for easy wearing, features include recycled polyester and PU lining, waterborn polyurethane footbed, B.E.D Foam™ insole made of 30% post-consumer waste for sustainable cushioned comfort and enhanced airflow, and an EVA lug outsole for reliable traction. Try pairing these boots with skirts and leggings for fun day to night looks!',
      price: 62.98,
      imageUrl: 'assets/images/11.png', id: '11',
    ),

    Shoes(
      name: 'Timberland Women Linden Woods Waterproof Boot',
      description: 'These women Timberland Linden wheat boots are the perfect shoes for outdoor adventures. Featuring a durable nubuck leather upper, these waterproof, seam-sealed boots feature 200 grams PrimaLoft® insulation, a steel shank for arch support, padded footbed with Ortholite technology for support and moisture managenemt, secure fitting lace-up closure with metal eyelets, a cushioned collar for optimal comfort and a rubber outsole for enhanced traction.',
      price: 159.96,
      imageUrl: 'assets/images/12.png', id: '12',
    ),
  ];

  List<Shoes> displayedProducts = [];

  @override
  void initState() {
    super.initState();
    displayedProducts = List.from(allProducts);
  }

  void _onSearch(String query) {
    setState(() {
      displayedProducts = allProducts
          .where((product) =>
          product.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Lady Premium Shoes', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart , color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartScreen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.payment, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CheckoutScreen()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                children: [
                  const Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Discover the Latest Trends',
                          style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Explore a wide range of stylish shoes that suit your fashion needs.',
                          style: TextStyle(fontSize: 16.0, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextFormField(
                        onChanged: _onSearch,
                        decoration: InputDecoration(
                          hintText: 'Search your shoes..',
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: _getCrossAxisCount(context),
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: 0.7,
              ),
              itemCount: displayedProducts.length,
              itemBuilder: (context, index) {
                return ProductCard(product: displayedProducts[index]);
              },
            ),
          ],
        ),
      ),
    );
  }

  int _getCrossAxisCount(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth > 1200) {
      return 3;
    } else if (screenWidth > 800) {
      return 2;
    } else {
      return 1;
    }
  }
}
