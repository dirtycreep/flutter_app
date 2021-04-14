
class MySingleton {
   static final MySingleton _instance = MySingleton._internal();
   String val = "";

   static MySingleton getInstance() {
     return _instance;
   }

   MySingleton() {
   }

   // factory MySingleton() {
   //   return _instance;
   // }

   MySingleton._internal();
}