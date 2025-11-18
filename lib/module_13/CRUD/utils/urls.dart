class Urls{
  static String baseUrl = "http://35.73.30.144:2008/api/v1";
  static String readProduct = '$baseUrl/ReadProduct';
  static String createProduct= '$baseUrl/CreateProduct';
  static String deleteProduct(String id) => '$baseUrl/DeleteProduct/$id';
  static String updateProduct(String id) => '$baseUrl/UpdateProduct/$id';
  static String searchProdById(String id) => '$baseUrl/ReadProductById/$id';

}