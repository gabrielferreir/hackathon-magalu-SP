import 'package:hackathonmagalusp/models/product_model.dart';

class ProductsRepository {
  Future<List<ProductModel>> getPrincipal() async {
    await Future.delayed(const Duration(seconds: 3));
    List<ProductModel> list = [
      ProductModel(
          1,
          'Smart TV LED 32” HD LG 32LK61 2 HDMI 2 USB Wi-Fi e Conversor Digital Integrados',
          [
            'https://a-static.mlcdn.com.br/618x463/smart-tv-led-32-hd-lg-32lk61-2-hdmi-2-usb-wi-fi-e-conversor-digital-integrados/mega-mamute/70511/373100e91d4d5313e09da31a7dd1a61b.jpg',
            'https://a-static.mlcdn.com.br/618x463/smart-tv-led-32-hd-lg-32lk61-2-hdmi-2-usb-wi-fi-e-conversor-digital-integrados/mega-mamute/70511/9e7bc779eb504a0490bddd11fbd756bf.jpg',
            'https://a-static.mlcdn.com.br/618x463/smart-tv-led-32-hd-lg-32lk61-2-hdmi-2-usb-wi-fi-e-conversor-digital-integrados/mega-mamute/70511/2a34090e943aee7e482f1e45f8c6e599.jpg',
            'https://a-static.mlcdn.com.br/618x463/smart-tv-led-32-hd-lg-32lk61-2-hdmi-2-usb-wi-fi-e-conversor-digital-integrados/mega-mamute/70511/4012109179eb36c8d56a343a4aa61c71.jpg',
          ],
          'Descrição *****',
          899.00,
          20),
      ProductModel(
          2,
          'TV LED 32” Philco HD Conversor Digital HDMI USBb',
          [
            'https://a-static.mlcdn.com.br/618x463/tv-led-32-philco-hd-conversor-digital-hdmi-usbb/comprebel2/12530/a4ddb32e3d921ce95057822a34d31cf0.jpg',
            'https://a-static.mlcdn.com.br/618x463/tv-led-32-philco-hd-conversor-digital-hdmi-usbb/comprebel2/12530/b577d7aa1b47643c823af24a7f7885b7.jpg',
            'https://a-static.mlcdn.com.br/618x463/tv-led-32-philco-hd-conversor-digital-hdmi-usbb/comprebel2/12530/4f95924bc84a2cedf87f3a4e3768ccc8.jpg',
            'https://a-static.mlcdn.com.br/618x463/tv-led-32-philco-hd-conversor-digital-hdmi-usbb/comprebel2/12530/0eb3484dd7f6371b284985279819ebaa.jpg',
          ],
          'Descrição 2 *****',
          769.00,
          17)
    ];
    return list;
  }
}
