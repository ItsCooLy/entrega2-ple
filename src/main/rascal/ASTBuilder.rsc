module ASTBuilder

import AST;
import Parser;
import ParseTree;
import String;

// Convierte el arbol concreto de un archivo .ol en un Programa del AST.
Programa construirAST(loc archivo) {
    Tree arbol = parsearArchivo(archivo);

    return quitarComillas(implode(#Programa, arbol));
}

// implode deja el texto tal cual esta en el codigo fuente, comillas incluidas:
//   "hola" -> dCadena("\"hola\"")     'x' -> dCaracter("'x'")
// Aqui se quitan, para que el AST guarde solo el contenido (hola, x).
Programa quitarComillas(Programa p) = visit (p) {
    case d: dCadena(str texto) => d[cadena = substring(texto, 1, size(texto) - 1)]
    case d: dCaracter(str texto) => d[caracter = substring(texto, 1, size(texto) - 1)]
};
