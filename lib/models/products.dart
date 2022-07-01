import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String id;
  final String category;
  final String name;
  final String description;
  final String imgUrl;
  final double price;

  Product(
      {@required this.id,
      @required this.category,
      @required this.name,
      @required this.description,
      @required this.imgUrl,
      @required this.price});
}

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: '1',
      name: 'Xiaomi Mi Band 7',
      imgUrl:
          'https://img.gkbcdn.com/s3/d/202206/605e8897-956c-41f9-a8e6-e7c61607f5ab.jpg',
      price: 189.00,
      category: 'SmartWatches',
      description:
          'Brand: XIAOMI, Model: Mi Band 7, Bluetooth Version: V5.2, Screen: 1.62 inch AMOLED Touch Display, Resolution: 192*490, Battery Capacity:180mAh',
    ),
    Product(
      id: '2',
      name: 'Apple 20W USB-C Power Adapter',
      imgUrl:
          'https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/MU7W2_GEO_MY?wid=1000&hei=1000&fmt=jpeg&qlt=95&.v=1542407212802',
      price: 99.00,
      category: 'Chargers',
      description:
          'The Apple 20W USB‑C Power Adapter offers fast, efficient charging at home, in the office, or on the go, Charging cable sold separately.',
    ),
    Product(
      id: '3',
      name: 'PINENG PN-969 Power Bank 20000mAh',
      imgUrl:
          'https://lzd-img-global.slatic.net/g/shop/fdda6c4645be6eec55d12775e2964df3.jpeg_2200x2200q80.jpg_.webp',
      price: 56.00,
      category: 'Powerbanks',
      description:
          'Brand: Pineng, Number of Ports: 2, Input: TypeMicro USB, Powerbank Features: Multiple Device Charging,Fast Charging',
    ),
    Product(
      id: '4',
      name: 'Spigen iPhone 13 Pro Max Case Tough Armor Mag (MagFit)',
      imgUrl:
          'https://cdn.shopify.com/s/files/1/0808/0067/products/title_ip67p_ta_mag_01.jpg?v=1631730371',
      price: 65.00,
      category: 'Casings',
      description:
          'Built to withstand anything you throw at it - Tough Armor® Mag is packed with the latest extreme impact foam under durable layers and a magnetic ring without losing the slimness and grip',
    ),
    Product(
      id: '5',
      name: 'Honor Magic 4 Pro',
      imgUrl:
          'https://soyacincau.com/wp-content/uploads/2022/03/220302-honor-magic-4-pro-feat-1024x576.jpg',
      price: 4199.00,
      category: 'Smartphones',
      description:
          'Android 12, Magic UI 6.0, Qualcomm Snapdragon  8 Gen 1, Rear Camera: (i) 50 MP, f/1.8, (Wide) (ii) 50 MP, f/2.2, (Ultra Wide) (iii) 64 MP, f/3.5, 3.5x Optical Zoom, 100x Digital Zoom, OIS, (Periscope Telephoto) Front:(i) 12MP, 8GB + 256 GB, LTPO OLED Curved Display, 4600 mAh',
    ),
    Product(
      id: '6',
      name: 'AirPods Pro',
      imgUrl:
          'https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/MWP22?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1591634795000',
      price: 1099.00,
      category: 'Accesories',
      description:
          'H1-based System in Package, Up to 4.5 hours of listening time with a single charge, Bluetooth 5.0, Active Noise Cancellation, Dual beamforming microphones, Inward-facing microphone',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((pdt) => pdt.id == id);
  }
}
