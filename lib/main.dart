import 'package:flutter/material.dart';
import 'datamodel.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  List<Dishes> items=[
    Dishes(name: 'ZingerBurger', discription:'For one person only', price:180 ,image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRjcRw-4Aqn8r7MwgQ2-jzl48LI8IF54bZesoO6n_CDG49DFUvD60QnOUE7azYM7fffHQ&usqp=CAU'),
    Dishes(name: 'Pizza', discription:'ItalianPizza', price: 800, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRknofa_9Vpomis8CZcooxiIe6afdQnVB6HXw&s')
   , Dishes(name:'pasta', discription: 'creamy_alfredo_pasta', price: 300, image: 'https://images.aws.nestle.recipes/resized/0a0717810b73a1672a029c29788e557b_creamy_alfredo_pasta_long_left_1080_850.jpg'),
    Dishes(name: 'platter', discription: 'for 3 persons', price: 4000, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRryPaxQ25OAMOmb4yTIekSQfqgCiFWPtI-9Q&s'),
    Dishes(name: 'Biryani ricce', discription: 'reccommended', price: 400, image:'https://i.ytimg.com/vi/10pTlbqA698/maxresdefault.jpg'),
    Dishes(name: 'ColdDrinks', discription:'NextCola', price:100, image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQWvcCs9pMLSOd6ag4_GMM_vKuPGv-cqzRXA&s')
];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Challange')
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder:(BuildContext context,int ind){
            return Padding(
              padding: const EdgeInsets.all(25),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                 border: Border.all(
                  color: Colors.grey[200]!
                 ),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(items[ind].image,width: double.infinity,fit: BoxFit.fill,),
                    SizedBox(height: 5,),
                    Text(items[ind].name),
                    Text('Price: '+items[ind].price.toString()),
                    Text(items[ind].discription),
                  ],
                ),
              ),
            );
          },
         
        ),
      ),
    );
  }
}
