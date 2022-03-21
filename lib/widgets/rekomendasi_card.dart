part of 'widgets.dart';

class RekomendasiCard extends StatelessWidget {
  final Products? products;

  RekomendasiCard(this.products);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3, vertical: 5),
      // padding: EdgeInsets.all(),
      width: MediaQuery.of(context).size.width / 2 - 35,
      height: 280,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 3.0,
            )
          ]),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: 160,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(products!.picturePath),
                    fit: BoxFit.cover)),
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2 - 45,
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Text(
                  products!.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                      fontSize: 13, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: Text(
                    '${NumberFormat.currency(
                      locale: 'id-ID',
                      decimalDigits: 0,
                    ).format(products!.price)}',
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.red,
                        fontWeight: FontWeight.w800)),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 5, top: 5),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow.shade700,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Text(
                  products!.rate.toString(),
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: Text(
                  '10Rb+ Terjual',
                  style: GoogleFonts.poppins(
                      fontSize: 13, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
