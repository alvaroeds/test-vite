import 'package:dartz/dartz.dart';
import 'package:pedido_listo_web/features/establishment/domain/establishment_dto.dart';
import 'package:pedido_listo_web/features/establishment/domain/product_dto.dart';
import 'package:pedido_listo_web/features/establishment/domain/schedule_dto.dart';
import 'package:values_object_and_failures_base/values_object_and_failures_base.dart';
import 'package:rxdart/rxdart.dart';

import 'package:pedido_listo_web/features/establishment/domain/interface_establishment.dart';

class MockEstablishmentRepository implements IEstablishmentRepository {
  @override
  Stream<Either<GlobalFailure<dynamic>, EstablishmentDto>> getEstablishment(
      String? name) {
    return Stream.periodic(
      const Duration(seconds: 2),
      (number) => EstablishmentDto(
          paymentMethodsTypes: [],
          name: '$name $number',
          bannerUrl:
              'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA12wCqT.img?w=1920&h=1080&m=4&q=99',
          schedule: const Schedule(),
          idUrl: '',
          profileImage:
              'https://ops-dra.agcstorage.link/v0/alldata-omfba/Captura%20de%20pantalla%202022-09-23%20172736.png',
          // 'https://as2.ftcdn.net/v2/jpg/02/83/93/33/1000_F_283933309_ilI1R57NdOUkiFHYePtuwbpKwREEtK9S.jpg',
          categories: mockCategories),
    )
        .map<Either<GlobalFailure<dynamic>, EstablishmentDto>>(right)
        .onErrorReturnWith(
          (error, stackTrace) =>
              left(GlobalFailure.fromException(error, stackTrace)),
        );
  }
}

final mockCategories = [
  mockCategory1,
  mockCategory2,
  mockCategory3,
  mockCategory4,
];

final mockImagesClasica = [
  'https://blog.mesa247.pe/wp-content/uploads/2017/09/17554038_724924751016746_9112874676500075052_n.jpg',
];
final mockImagesHawaiana = [
  'https://okdiario.com/img/recetas/2016/12/11/hamburguesa-de-hawai.jpg',
];
final mockImagesRoyal = [
  'https://tofuu.getjusto.com/orioneat-prod-resized/2JTDjg6yjtsQWdkHa-1200-1200.webp',
];

final mockImagesQuarterChicken = [
  'https://polleriaelbuensazon.com/wp-content/uploads/2022/04/un-octavo-de-pollo.png',
];
final mockImagesHalfChicken = [
  'http://cdn.rusticadelivery.com/images/products/33/33-1594574532-5f0b46c47639c.jpg',
];
final mockImagesMounster = [
  'https://grupochios.com/wp-content/uploads/2022/02/mostrito.jpg',
];

final mockCategory1 = CategoriesDto(
  name: 'Hamburguesas',
  state: 'active',
  products: [
    ProductDto(
        description: 'Pan artesanal + ensalada + 120gr de carne + queso',
        discount: 0.2,
        name: 'La Clasica',
        price: 15.60,
        state: 'active',
        images: mockImagesClasica),
    ProductDto(
      description: 'Pan artesanal + ensalada + 120gr de carne + queso',
      discount: 0,
      name: 'La Hawaiana',
      price: 15,
      state: 'active',
      images: mockImagesHawaiana,
    ),
    ProductDto(
      description: 'Pan artesanal + ensalada + 120gr de carne + queso',
      discount: 0,
      name: 'La Royal',
      price: 17,
      state: 'active',
      images: mockImagesRoyal,
    ),
  ],
);
final mockCategory2 = CategoriesDto(
  name: 'Brasas',
  state: 'active',
  products: [
    ProductDto(
        description: 'papas + ensalada + cremas + 1/4 de pollo pecho o pierna',
        discount: 0,
        name: '1/4 de pollo',
        price: 17,
        state: 'active',
        images: mockImagesQuarterChicken),
    ProductDto(
      description: 'papas + ensalada + cremas',
      discount: 0,
      name: '1/2 pollo',
      price: 53,
      state: 'active',
      images: mockImagesHalfChicken,
    ),
    ProductDto(
      description: 'papas + ensalada + chaufa + cremas',
      discount: 0,
      name: 'Mostrito',
      price: 19,
      state: 'active',
      images: mockImagesMounster,
    ),
  ],
);
final mockCategory3 = CategoriesDto(
  name: 'Los Saltados',
  state: 'active',
  products: [
    ProductDto(
        description: 'Clásico tallarín saltado de pollo',
        name: 'Tallarín saltado de pollo',
        discount: 0,
        price: 19,
        state: 'active',
        images: mockImagesClasica),
    ProductDto(
      description: 'Clásico tallarín saltado de carne',
      discount: 0,
      name: 'Tallarín saltado de carne',
      price: 20,
      state: 'active',
      images: mockImagesClasica,
    ),
  ],
);
final mockCategory4 = CategoriesDto(
  name: 'Las Wings',
  state: 'active',
  products: [
    ProductDto(
        description: 'Elige 1 sabor: BBQ - Achorada - Honey mustard',
        discount: 0,
        name: 'Porción de 6 wings - 1 salsa',
        price: 18,
        state: 'active',
        images: mockImagesClasica),
    ProductDto(
      description: 'Elige 2 sabores: BBQ - Achorada - Honey mustard',
      discount: 0,
      name: 'Porción de 12 wings - 2 salsas',
      price: 30,
      state: 'active',
      images: mockImagesClasica,
    ),
    ProductDto(
      description: 'Elige 3 sabores: BBQ - Achorada - Honey mustard',
      discount: 0,
      name: 'Porción de 18 wings - 3 salsa',
      price: 42,
      state: 'active',
      images: mockImagesClasica,
    ),
  ],
);
