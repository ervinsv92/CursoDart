main(){

  //null es valido para todos los tipos de dato

  //Numeros *********************************************************************
  var numero = 10;
  int numeroNull = null;
  int numero2 = null;
  int numero3 = 5;
  numero3 = 15;
  double b = 10.5;
  int x = 10, y = 20, z = 30;
  int _a = 50; //es valido, es privado por el guion bajo
  double $b = 45.63; //$ es como cualquier otro caracter

  //print($b);

  //String *********************************************************************
  var nombre = 'Ervin'; //var infiere el tipo de dato
  String nombre2 = "Ervin";//Se recomienda la comilla sensilla porque es mas liviana
  String nombre3 = 'O\'Connor';
  String nombre4 = "O\'Connor";
  String multilinea = '''
Este es un 
    string multi 
     linea
     o'connor
  ''';//deja los espacios de cuando se define

    String multilinea2 = """
Este es un 
    string multi 
     linea
     o'connor
  """;//deja los espacios de cuando se define
  
  //print(multilinea2);

  //Booleans *********************************************************************
  var activo = true;
  bool activo2 = true;
  bool activo3 = null;//Cuando la variable se inicializa siempre es null, sin importar el tipo de dato
  activo = !activo;

  //Listas o arreglos *********************************************************************
  //Es una coleccion
  var personajes = ["Goku", "Krillin", 10, true]; //acepta tipos de datos diferentes
  List<String> listaPersonajes = ["Goju", "Gohan"];
  List<String> lista2 = new List();
  lista2.add("Videl");
  lista2.addAll(["Picoro", "Dende"]);

  List<String> lista3 = new List();
  lista3..add("Vegeta");
  lista3..add("Bulma");
  lista3..add("Bulma");//las listas permiten informacion repetida

  List<String> lista4 = new List(3); //Lista tamaño fijo
  //lista4.addAll(["Maestro karin", "Magimboo", "Bavidi"]); //no sirve con listas fijas
  lista4[0] = "Maestro karin";
  lista4[1] = "Magimboo";
  lista4[2] = "Bavidi";

  //print(lista4);

  //Sets *********************************************************************
  //Set es igual a la lista, pero no acepta valores duplicados, si un elemento ya existe no lo inserta en la lista, pero no da error
  var villano = {"Goku", "Krillin", 10, true};
  Set<String> villano2 = {"Goku", "Krillin"};
  villano2.add("Goku black");
  villano2.add("Goku black");

  //print(villano2);
  //print(villano2.first);


  //Mapas *********************************************************************
  //Son pares de valor llave
  var ironman = {
    'nombre':'Tony Stark',
    'poder':'Inteligencia',
    'edad':60
  };

  Map<String, String> ironman2 = {
    'nombre':'Tony Stark',
    'poder':'Inteligencia',
    'edad':'60'
  };

  Map<dynamic, String> ironman3 = {
    'nombre':'Tony Stark',
    'poder':'Inteligencia',
    10:'Nivel energia'
  };

  //print(ironman);
  //print(ironman['nombre']);
 //print(ironman3[10]);

  Map<String, dynamic> capitan = new Map();
  capitan.addAll({'nombre':'Steve', 'poder':'soportar suero'});

  print(capitan);
}