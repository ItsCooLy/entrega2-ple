module Parser

import ParseTree;
import Syntax;

// Parsea un archivo .ol 
Tree parsearArchivo(loc archivo) {
    start[Programa] pt = parse(#start[Programa], archivo);
    return pt.top;
}

// Parsea una expresion suelta (se usa para las interpolaciones ${...} de las cadenas).
Tree parsearExp(str texto) = parse(#Exp, texto);