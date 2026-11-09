module Main

import IO;
import AST;
import ASTBuilder;

// Punto de entrada del proyecto: lee un archivo de Objectilang, lo convierte en AST y lo imprime.
//
// Uso desde la terminal de Rascal:
//   import Main;
//   main();                                                  // usa el archivo por defecto
//   main(archivo=|project://entrega2-ple/instance/snippet3.obl|);
int main(loc archivo=|project://entrega2-ple/instance/snippet1.obl|) {
    Programa programa = construirAST(archivo);
    iprintln(programa);
    return 0;
}
