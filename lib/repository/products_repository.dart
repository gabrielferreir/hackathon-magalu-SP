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

  Future<List<ProductModel>> getCaldaLonga() async {
    await Future.delayed(const Duration(seconds: 3));
    List<ProductModel> list = [
      ProductModel(
        0,
        'Ração Magnus Todo Dia Para Cães Adultos - 25 Kg',
        [
          "https://a-static.mlcdn.com.br/618x463/racao-magnus-todo-dia-para-caes-adultos-25-kg/ranchoepet/2400450749/feb9788802fdc7b1eb703747aec9d0c6.jpg",
          "https://www.magnuspet.com.br/images/twitter-share.png",
          "http://static5.minhalojanouol.com.br/lojasummerpiscinas/produto/multifotos/hd/20170522162456_4764995236_DMZ.jpg"
        ],
        'A Ração Magnus Original para Cães Adultos , é a seleção de ingredientes que proporcionam um alimento com todos os nutrientes essenciais, importantes para a qualidade de vida do seu cão. Além disso, é super crocante e tem um sabor que ele adora.',
        112.85,
        150,
      ),
      ProductModel(
          1,
          'Shampoo Aussie Moist 180ml',
          [
            "https://a-static.mlcdn.com.br/618x463/shampoo-aussie-moist-180ml/drogariaspacheco/665800/de7a90257ee10f7333ced431d2697481.jpg",
            "https://a-static.mlcdn.com.br/618x463/condicionador-aussie-moist-400ml/sages/24/1d5c8f64b1f8597671acedc2ca5b8509.jpg",
            "https://a-static.mlcdn.com.br/618x463/condicionador-aussie-moist-400ml/sages/24/905090c5ed2454a2096cfc452c397c8d.jpg"
          ],
          'Com o Condicionador Aussie Moist você fortalece os cabelos e pode deixá-los mais sedosos e suaves. O Condicionador Revitalizador Aussie é mais um produto da linha que faz muito sucesso entre as mulheres americanas e agora está chegando ao Brasil. Ótimo para todos os tipos de cabelos, principalmente para cabelos secos que necessitam de hidratação, o Condicionador Aussie Moist possui Aloe australiano e óleo de semente de Jojoba, responsáveis pela hidratação e pelo fortalecimento. Após usar o shampoo e enxaguar o cabelo, aplique o produto e massageie o couro cabeludo. Depois é só enxaguar e dizer adeus ao cabelo seco e olá para um cabelo revitalizado e bonito.',
          19.99,
          8),
      ProductModel(
        2,
        'Papel Higiênico Folha Dupla Neve - Toque de Seda',
        [
          "https://a-static.mlcdn.com.br/618x463/papel-higienico-folha-dupla-neve-toque-de-seda-30209802-24-rolos-30m/magazineluiza/215282300/4569949db71a5c7eb137db96d5a9d64b.jpg",
          "https://a-static.mlcdn.com.br/618x463/papel-higienico-folha-dupla-neve-toque-de-seda-30209802-24-rolos-30m/magazineluiza/215282300/a362debb6b6f3cfeb7c31e9c630b0536.jpg",
          "https://a-static.mlcdn.com.br/618x463/papel-higienico-folha-dupla-neve-toque-de-seda-30209802-24-rolos-30m/magazineluiza/215282300/ac7a0fbb54524c85180b6c542b430930.jpg"
        ],
        'O Papel Higiênico Neve 30209802 Toque de Seda Neutro Folha Dupla possui a exclusiva tecnologia Dermacare, com Pré-Bio Dermatológico, que tem a função de preservar o pH natural da pele. Contém 24 rolos de 30m que possuem maciez insuperável e qualidade superior.',
        38.90,
        15,
      ),
      ProductModel(
          3,
          'Ração/Mistura Pássaro Forte Para Calopsitas E Agapornis',
          [
            "https://a-static.mlcdn.com.br/618x463/racao-mistura-passaro-forte-para-calopsitas-e-agapornis-500g/petatalaia/3407690605/5f046f492ab67427c70b9a7921d6cba9.jpg",
            "https://a-static.mlcdn.com.br/618x463/mistura-de-sementes-para-calopsita-e-agapornis-1-kg-propria/tanakaopetshop/5017578047/acbd39ea5027fe37fc1a72b30c140270.jpg",
            "https://statig2.akamaized.net/bancodeimagens/1a/ru/k3/1aruk3a8uzxdidnr8uwojvjol.jpg"
          ],
          'Ração/Mistura Pássaro Forte Para Calopsitas E Agapornis - Mistura de sementes, grãos e partículas extrusadas, alimento completo e balanceado indicado para pássaros. - Enriquecida com vitaminas e minerais que ajudam no equilíbrio nutricional de seus pássaros, mantendo - os sempre fortes e saudáveis.',
          4.90,
          5),
      ProductModel(
        4,
        'Granado Granaderma Antioleosidade - Gel Hidratante Facial 50g',
        [
          "https://a-static.mlcdn.com.br/618x463/granado-granaderma-antioleosidade-gel-hidratante-facial-50g/belezanaweb/27830/2339619ffcee22aec80f6010cce787e0.jpg",
          "https://coisasdediva.files.wordpress.com/2015/02/hidratante_granado_3.jpg",
          "https://www.euvouderosa.com/wp-content/uploads/2018/10/IMG_2638.jpg"
        ],
        'Gel hidratante de rosto para pele oleosa. Hidrata, reduz a aparência de poros e minimiza brilho excessivo.',
        59.75,
        20,
      ),
      ProductModel(
          5,
          'Desodorante Aerosol Antitranspirante Masculino - Adidas Climacool 150ml',
          [
            "https://a-static.mlcdn.com.br/618x463/desodorante-aerosol-antitranspirante-masculino-adidas-climacool-150ml-6-unidades/magazineluiza/229181700/963e41ce7b944b7538a8156ea9bfc880.jpg",
            "https://a-static.mlcdn.com.br/618x463/desodorante-aerosol-antitranspirante-masculino-adidas-climacool-150ml-6-unidades/magazineluiza/229181700/716488b02be99a962c531ffc149551cf.jpg",
            "https://a-static.mlcdn.com.br/618x463/desodorante-aerosol-antitranspirante-masculino-adidas-climacool-150ml-6-unidades/magazineluiza/229181700/b13828ce11716b72ea9bee079bed647d.jpg"
          ],
          'O desodorante masculino aerosol Adidas Climacool de 150ml controla a transpiração por até 48 horas. Combate os odores e mantém o frescor o dia inteiro com uma fragrância suave a agradável.',
          65.40,
          25)
    ];
    return list;
  }
}
