module ASTBuilder

import AST;
import Parser;
import ParseTree;

// Convierte el arbol concreto de un archivo .ol en un Programa del AST.
Programa construirAST(loc archivo) {
    Tree arbol = parsearArchivo(archivo);

    return implode(#Programa, arbol);
}