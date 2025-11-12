
import 'package:flutter/material.dart';
import 'package:flutter_practice/module_11/widget/tour_card.dart';
class TourPkg extends StatelessWidget {
  const TourPkg({super.key});

  @override
  Widget build(BuildContext context) {

    List<Map<String, String>> listPackage = [
      {
        'image': 'https://grihotagi.com/storage/images/posts/1740373837.webp',
        'title': 'Bandarban,Bangladesh',
        'night': '2 nights,',
        'day': '3 days',
        'price': '399',
      },
      {
        'image': 'https://www.dailypost.net/media/imgAll/2023September/coxs-bazar-20240928103318.jfif',
        'title': 'Cox-Bazar,Bangladesh',
        'night': '3 nights,',
        'day': '4 days',
        'price': '299',
      },
      {
        'image': 'https://www.mustgo.com/wp-content/uploads/2018/04/par_320a.jpg',
        'title': 'Romantic Paris GateWay',
        'night': '3 nights,',
        'day': '4 days',
        'price': '599',
      },
      {
        'image': 'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit1440960gsm/events/2022/09/28/d3946839-8e64-4cf3-be55-54509f40c850-1664352831654-0f43d54ef4dd80c9002412227ef2bb58.jpg',
        'title': 'Bali Adventure Tour',
        'night': '5 nights,',
        'day': '6 days',
        'price': '699',
      },
      {
        'image': 'https://www.explore-vacation.com/uploads/slide/chandragiri-bhaleswor-mahadev-temple-298.jpeg',
        'title': 'Nepal Tour',
        'night': '6 nights,',
        'day': '7 days',
        'price': '788',
      },
      {
        'image': 'https://swastiktours.com/wp-content/uploads/2024/04/22.webp',
        'title': 'Maldives Tour',
        'night': '2 nights,',
        'day': '3 days',
        'price': '899',
      },
    ];



    // final List<Map<String, String>> items=List.generate(
    //     10, (index)=>{
    //       'image':  'https://picsum.photos/200?random=$index',
    //       'title': 'Item ${index + 1}',
    // }
    // );

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView( // 👈 পুরো screen scrollable
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔹 Top Image Stack Section
              Stack(
                children: [
                  Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://img.freepik.com/premium-photo/illuminated-buildings-city-night_1048944-13814670.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 90,
                    left: 16,
                    child: const Text(
                      'Explore the World',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 10,
                    right: 10,
                    child: Container(
                      height: 60,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search destination',
                          prefixIcon: const Icon(Icons.search),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // 🔹 Top Destinations
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Top Destinations',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      TourCard(
                        img:
                        'https://static.independent.co.uk/2025/04/25/13/42/iStock-1498516775.jpg?quality=75&width=1368&crop=3%3A2%2Csmart&auto=webp',
                        title: 'Paris',
                      ),
                      const SizedBox(width: 10),
                      TourCard(
                        img:
                        'https://q-xx.bstatic.com/xdata/images/hotel/max1024x768/673140870.jpg?k=2ea3f6f7d849533ff554662188928f864390941ec51ad3c3872db553a6c4e83b&o=&s=1024x',
                        title: 'Maldives',
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // 🔹 Second Row Destinations
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      TourCard(
                        img:
                        'https://media.istockphoto.com/id/467829216/photo/dubai-marina.jpg?s=2048x2048&w=is&k=20&c=4m3_1e7uebRXCVnHCilSoU1jN-re1nXspSKpN6yCCr4=',
                        title: 'Dubai',
                      ),
                      const SizedBox(width: 10),
                      TourCard(
                        img:
                        'https://media.gettyimages.com/id/1145042281/photo/diamond-beach-in-nusa-penida-bali.jpg?s=1024x1024&w=gi&k=20&c=TdNQiZLnoxI0Zvm9CPsojZ8I4Xg9CuDhM_pj2L2pTjk=',
                        title: 'Bali',
                      ),
                    ],
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Trending Packages',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // 🔹 ListView replaced by Column + map (No ParentDataWidget error)
              Card(
                elevation: 4,
                shadowColor: Colors.grey,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: listPackage.length,
                    itemBuilder: (context, index){
                      final item  = listPackage[index];
                      return ListTile(
                        contentPadding:  EdgeInsets.all(8.0),
                        title:  Text(
                          item['title']?.isNotEmpty == true ? item['title']! : '' ,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,

                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.access_alarm),
                                SizedBox(width: 5,),
                                Text('${ item['night']?.isNotEmpty == true ? item['night']! : ''} '
                                    '${ item['day']?.isNotEmpty == true ? item['day']! : ''}',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                                ),

                              ],
                            ),

                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                   Text('\$',
                                   style: TextStyle(
                                     fontSize: 16,
                                     fontWeight: FontWeight.bold,
                                   ),
                                   ),
                                   Text(item['price']?.isNotEmpty == true ? item['price']! : '',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                              ],
                            ),

                          ],
                        ),
                        leading: ClipRRect(
                          borderRadius:  BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),
                          child: Image.network(
                            item['image']?.isNotEmpty == true ? item['image']! : '',
                            width: 70,
                            height: 70,
                            fit: BoxFit.cover,
                          ),
                        ),
                        trailing: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          child:  Text('Book'),
                        ),
                      );
                    }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


