part of 'models.dart';

class Products extends Equatable {
  final int? id;
  final String picturePath;
  final String name;
  final String? description;
  final int? price;
  final double rate;

  Products({
    this.id,
    required this.picturePath,
    required this.name,
    this.description,
    this.price,
    required this.rate,
  });

  @override
  List<Object?> get props => [id, picturePath, name, description, rate];
}

List<Products> mockFood = [
  Products(
    id: 1,
    name: 'Kerupuk Sanjai Balado Mak Taci',
    picturePath: 'https://s1.bukalapak.com/img/61880003991/large/data.jpeg',
    description: 'okeeeeehhhh',
    price: 28900,
    rate: 4.2,
  ),
  Products(
    id: 2,
    name: 'Kerupuk Sanjai Balado Mak Itam',
    picturePath: 'https://s1.bukalapak.com/img/61880003991/large/data.jpeg',
    description: 'okeeeeehhhh',
    price: 28900,
    rate: 4.2,
  ),
  Products(
    id: 3,
    name: 'Kerupuk Sanjai Balado Mak Cik',
    picturePath: 'https://s1.bukalapak.com/img/61880003991/large/data.jpeg',
    description: 'okeeeeehhhh',
    price: 28900,
    rate: 4.2,
  ),
  Products(
    id: 4,
    name: 'Kerupuk Sanjai Balado Mak Etek',
    picturePath: 'https://s1.bukalapak.com/img/61880003991/large/data.jpeg',
    description: 'okeeeeehhhh',
    price: 28900,
    rate: 4.2,
  ),
];
