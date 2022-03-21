part of 'widgets.dart';

class KategoryCard extends StatelessWidget {
  final Kategori? kategori;

  KategoryCard(this.kategori);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      width: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 1.0,
            )
          ],
          borderRadius: BorderRadius.circular(13)),
      height: 110,
      child: Column(
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              image: DecorationImage(
                  image: NetworkImage(kategori!.picturePath),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            width: 90,
            child: Text(
              kategori!.name,
              maxLines: 2,
              style: GoogleFonts.poppins(
                  fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
