part of 'models.dart';

class Kategori extends Equatable {
  final int? id;
  final String picturePath;
  final String name;

  Kategori({
    this.id,
    required this.picturePath,
    required this.name,
  });

  @override
  List<Object?> get props => [
        id,
        picturePath,
        name,
      ];
}

List<Kategori> mockKategori = [
  Kategori(
      id: 1,
      picturePath:
          'https://media.suara.com/pictures/970x544/2020/03/05/64264-strategi-mengurangi-jumlah-pakaian-di-rumah.jpg',
      name: 'Pakaian'),
  Kategori(
      id: 2,
      picturePath:
          'https://th.bing.com/th/id/OIP.iic2q0nXRi54m4wvmL322QHaFF?pid=ImgDet&rs=1',
      name: 'Makanan Ringan'),
  Kategori(
      id: 3,
      picturePath:
          'https://th.bing.com/th/id/OIP.D8ctnuBdAaZz7jbBuQx7ugHaFj?w=287&h=215&c=7&r=0&o=5&pid=1.7',
      name: 'Tas'),
  Kategori(
      id: 4,
      picturePath:
          'https://th.bing.com/th/id/R.c1154f549ba81ca9cc93d6048790dc06?rik=3cA%2bo60T2KGt5g&riu=http%3a%2f%2f1.bp.blogspot.com%2f_Ycl0lDziBgY%2fTSp9soBKfNI%2fAAAAAAAAAEg%2fZ40-xYYXHdM%2fs1600%2fKalung2%2blucu.jpg&ehk=mIXTvxf9TKNHen7MDsOTxenmeIwom3zyRkDSJzACcV4%3d&risl=&pid=ImgRaw&r=0https://2.bp.blogspot.com/--9vEm6qPC_Y/Uc05bvpYCuI/AAAAAAAAARw/f3SAdLkfOnk/s1100/grosir+aksesoris+wanita+murah.jpg',
      name: 'Aksesoris'),
  Kategori(
      id: 5,
      picturePath:
          'https://www.tokowahab.com/media/catalog/category/BUMBU_MASAK.jpg',
      name: 'Bumbu Masak'),
  Kategori(
      id: 6,
      picturePath:
          'https://pusat-mukena.com/wp-content/uploads/2018/10/mukena-afifah-Abu.jpg',
      name: 'Mukena'),
  Kategori(
      id: 7,
      picturePath:
          'https://i.pinimg.com/originals/43/67/b5/4367b5ac7c712e46eecc5cb950e79f09.jpg',
      name: 'Mainan'),
  Kategori(
      id: 8,
      picturePath:
          'https://cdn-image.hipwee.com/wp-content/uploads/2019/01/hipwee-satin-640x428.png',
      name: 'Bahan Kain'),
  Kategori(
      id: 9,
      picturePath:
          'https://s2.bukalapak.com/img/7852408222/w-1000/Fashion_Anak__Pakaian_Anak_Laki_Laki_setelan_66VC1.jpg',
      name: 'Pakaian Anak'),
  Kategori(
      id: 10,
      picturePath:
          'https://bernardhats.com/wp-content/uploads/2015/06/DSC08397.jpg',
      name: 'Topi'),
];
