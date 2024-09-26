void main() async{
  final myFuture = Future(() {
    print('Create future');
    return 1;
  });


  // getOrder(16).then((value){
  //   print('Your Order : $value');
  // }).catchError((Error){    // Catch
  //   print('Error, $Error'); // Finally
  // }).whenComplete(() {
  //   print('Thank You!');
  // });

  // Async
  print('Waiting user order');
  try {
    var order = await getOrder(16); // Cara 1
    print('Your order: $order');
  } catch (e) {
    print('Error: $e');
  }
   
  // print('Waiting user order');
  // var order = await getOrder(16);
  // print('Your order : $order');
 
  // print('main() done'); // Main done akan di jalankan terlebih dahulu...

  // String kalimat = 'Makanan';
  // try {
  //   int angka = int.parse(kalimat);
  // } catch (e) {
  //   print('Masukkan Angka Dengan Benar!');
  // }
}

Future<String> getOrder(int countOrder){
  return Future.delayed(Duration(seconds: 3), () {
    var stock = 15;
    if(stock >= countOrder){
      return 'Coffe Buba';
    } else{
      throw 'Stock is not enough';
    }
  });
}