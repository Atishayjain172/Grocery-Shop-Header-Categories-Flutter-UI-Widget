Widget headerTopCategories(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      sectionHeader('All Categories'),
      SizedBox(
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: <Widget>[
            headerCategoryItem('Hair\nCare','https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/190827-beauty-best-hair-products-1566922412.png?crop=1.00xw:1.00xh;0,0&resize=1200:*' , onPressed: () {
             //ontap functionality here
             }),
            headerCategoryItem('Beverages', 'https://www.sanopankurchak.com/images/inners/services/softdrinks.jpg', onPressed: () {
             //ontap functionality here
            }),
          ],
        ),
      )
    ],
  );
}

//header category bar defination here
Widget headerCategoryItem(String name, String icon, {onPressed}) {
  return Container(
    margin: EdgeInsets.only(left: 15),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Container(
              margin: EdgeInsets.only(bottom: 10),
              width: 86,
              height: 86,
              child: FloatingActionButton(
                shape: CircleBorder(),
                heroTag: name,
                onPressed: onPressed,
                backgroundColor: white,
                child: Image.network(icon,
                  height: 65,
                  width: 65,
                ),
              )),
        ),
        Text(name + ' ›', style: categoryText)
      ],
    ),
  );
}

class subitems{
  String name;
  String image;
  subitems(this.name,this.image);
}