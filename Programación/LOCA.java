import java.util.Scanner;

public class LOCA {


    static Scanner sc = new Scanner(System.in);


    static int escenaActual = 1;
    static long tiempoInicio = 0;


    static String[] inventario = new String[10];
    static int cantidadItems = 0;


    static int mapasVistos = 0;
    static int decisionesTomadas = 0;


    static char[][] mapa = {
            {'H', '-', '-', '-', 'L'},
            {'|', ' ', 'X', ' ', '|'},
            {'|', ' ', '|', ' ', '|'},
            {'B', '-', '+', '-', 'P'}
    };


    public static void main(String[] args) {
        System.out.println("╔════════════════════════════════════════════╗");
        System.out.println("║  STRANGER THINGS: RESCATA A WILL          ║");
        System.out.println("║  Una aventura en Hawkins                  ║");
        System.out.println("╚════════════════════════════════════════════╝");
        System.out.println("");

        tiempoInicio = System.currentTimeMillis();
        jugar();
    }


    public static void jugar() {

        while (true) {

            if (escenaActual == 70) {
                manejarAhorcado();
                continue;
            }

            if (escenaActual == 80) {
                manejarMapa();
                continue;
            }

            if (escenaActual >= 98) {
                manejarFinales();
                break;
            }


            ejecutarEscena(escenaActual);
        }
    }

    public static void ejecutarEscena(int numEscena) {
        ejecutarEscena(numEscena, "");
    }


    public static void ejecutarEscena(int numEscena, String mensajeExtra) {
        if (mensajeExtra.length() > 0) {
            System.out.println("");
            System.out.println(mensajeExtra);
        }


        switch(numEscena) {
            case 1: escena1(); break;
            case 2: escena2(); break;
            case 3: escena3(); break;
            case 4: escena4(); break;
            case 5: escena5(); break;
            case 6: escena6(); break;
            case 7: escena7(); break;
            case 8: escena8(); break;
            case 9: escena9(); break;
            case 10: escena10(); break;
            case 11: escena11(); break;
            case 12: escena12(); break;
            case 13: escena13(); break;
            case 14: escena14(); break;
            default:
                System.out.println("Escena no encontrada.");
                escenaActual = 1;
        }
    }


    public static void escena1() {
        mostrarEscena(1,
                "Estas en Hawkins, Indiana. 1983." +
                        "Will Byers ha desaparecido misteriosamente." +
                        "Mike, Dustin y Lucas te necesitan para encontrarlo." +
                        "Las luces parpadean extrañamente...");

        System.out.println("");
        System.out.println("1. Ir al bosque a buscar pistas");
        System.out.println("2. Ir a la comisaria a hablar con Hopper");
        System.out.println("3. Revisar el ultimo lugar donde vieron a Will");
        System.out.println("4. Ver mapa");
        System.out.println("5. Ver inventario");

        int opcion = leerOpcion(5);

        if (opcion == 1) {
            escenaActual = 2;
            decisionesTomadas++;
        } else if (opcion == 2) {
            escenaActual = 3;
            decisionesTomadas++;
        } else if (opcion == 3) {
            escenaActual = 11;
            decisionesTomadas++;
        } else if (opcion == 4) {
            mostrarMapa();
            mapasVistos++;
        } else if (opcion == 5) {
            mostrarInventario();
        }
    }

    public static void escena2() {
        mostrarEscena(2,
                "El bosque esta oscuro y silencioso." +
                        "Encuentras una linterna tirada en el suelo." +
                        "Cerca hay marcas extrañas en los arboles...");

        System.out.println("");
        System.out.println("1. Recoger la linterna");
        System.out.println("2. Seguir las marcas en los arboles");
        System.out.println("3. Volver al pueblo");
        System.out.println("4. Ver mapa");
        System.out.println("5. Ver inventario");

        int opcion = leerOpcion(5);

        if (opcion == 1) {
            agregarInventario("linterna");
            escenaActual = 4;
            decisionesTomadas++;
        } else if (opcion == 2) {
            escenaActual = 12;
            decisionesTomadas++;
        } else if (opcion == 3) {
            escenaActual = 5;
            decisionesTomadas++;
        } else if (opcion == 4) {
            mostrarMapa();
            mapasVistos++;
        } else if (opcion == 5) {
            mostrarInventario();
        }
    }

    public static void escena3() {
        mostrarEscena(3,
                "Hopper te mira seriamente." +
                        "'He investigado el laboratorio de Hawkins." +
                        "Esa gente oculta algo. Ten cuidado.'" +
                        "Te da una brujula extraña que siempre apunta al norte.");

        agregarInventario("brujula");

        System.out.println("");
        System.out.println("1. Ir al laboratorio");
        System.out.println("2. Investigar mas en el pueblo");
        System.out.println("3. Ver mapa");
        System.out.println("4. Ver inventario");

        int opcion = leerOpcion(4);

        if (opcion == 1) {
            escenaActual = 6;
            decisionesTomadas++;
        } else if (opcion == 2) {
            escenaActual = 11;
            decisionesTomadas++;
        } else if (opcion == 3) {
            mostrarMapa();
            mapasVistos++;
        } else if (opcion == 4) {
            mostrarInventario();
        }
    }

    public static void escena4() {
        mostrarEscena(4,
                "Has obtenido la linterna." +
                        "La luz parpadea nerviosamente." +
                        "Escuchas un ruido en la distancia...");

        System.out.println("");
        System.out.println("1. Seguir el sonido");
        System.out.println("2. Volver al pueblo");
        System.out.println("3. Ver mapa");
        System.out.println("4. Ver inventario");

        int opcion = leerOpcion(4);

        if (opcion == 1) {
            escenaActual = 12;
            decisionesTomadas++;
        } else if (opcion == 2) {
            escenaActual = 5;
            decisionesTomadas++;
        } else if (opcion == 3) {
            mostrarMapa();
            mapasVistos++;
        } else if (opcion == 4) {
            mostrarInventario();
        }
    }

    public static void escena5() {
        mostrarEscena(5,
                "De vuelta en el pueblo, los chicos te esperan." +
                        "'Tenemos que ir al laboratorio', dice Mike." +
                        "Dustin muestra un mapa que encontro.");

        System.out.println("");
        System.out.println("1. Ver el mapa");
        System.out.println("2. Ir directamente al laboratorio");
        System.out.println("3. Ver inventario");

        int opcion = leerOpcion(3);

        if (opcion == 1) {
            escenaActual = 80;
            decisionesTomadas++;
        } else if (opcion == 2) {
            escenaActual = 6;
            decisionesTomadas++;
        } else if (opcion == 3) {
            mostrarInventario();
        }
    }

    public static void escena6() {
        mostrarEscena(6,
                "Llegas al Laboratorio Nacional de Hawkins." +
                        "La puerta principal esta cerrada." +
                        "Hay un panel electronico con un codigo.");

        System.out.println("");
        System.out.println("1. Intentar descifrar el codigo (Jugar Ahorcado)");
        System.out.println("2. Buscar otra entrada");
        System.out.println("3. Ver mapa");
        System.out.println("4. Ver inventario");

        int opcion = leerOpcion(4);

        if (opcion == 1) {
            escenaActual = 7;
            decisionesTomadas++;
        } else if (opcion == 2) {
            escenaActual = 13;
            decisionesTomadas++;
        } else if (opcion == 3) {
            mostrarMapa();
            mapasVistos++;
        } else if (opcion == 4) {
            mostrarInventario();
        }
    }

    public static void escena7() {
        mostrarEscena(7,
                "El panel muestra espacios en blanco." +
                        "Parece un juego... necesitas adivinar la palabra." +
                        "Palabras relacionadas con Stranger Things...");

        System.out.println("");
        System.out.println("Presiona ENTER para comenzar el desafio...");
        sc.nextLine();
        escenaActual = 70;
    }

    public static void escena8() {
        mostrarEscena(8,
                "La puerta se abre con un silbido neumatico." +
                        "Un pasillo oscuro se extiende ante ti.");

        if (tieneItem("linterna")) {
            System.out.println("Tu linterna ilumina el camino.");
        } else {
            System.out.println("Esta muy oscuro, avanzas con cuidado.");
        }

        System.out.println("");
        System.out.println("1. Avanzar por el pasillo");
        System.out.println("2. Explorar las habitaciones laterales");
        System.out.println("3. Ver mapa");
        System.out.println("4. Ver inventario");

        int opcion = leerOpcion(4);

        if (opcion == 1) {
            escenaActual = 9;
            decisionesTomadas++;
        } else if (opcion == 2) {
            escenaActual = 14;
            decisionesTomadas++;
        } else if (opcion == 3) {
            mostrarMapa();
            mapasVistos++;
        } else if (opcion == 4) {
            mostrarInventario();
        }
    }

    public static void escena9() {
        mostrarEscena(9,
                "Encuentras una habitacion con equipo extraño." +
                        "En una mesa hay una llave con el simbolo del laboratorio." +
                        "Tambien ves documentos sobre 'El Upside Down'.");

        if (!tieneItem("llave")) {
            agregarInventario("llave");
        }

        System.out.println("");
        System.out.println("1. Leer los documentos");
        System.out.println("2. Continuar explorando");
        System.out.println("3. Ver mapa");
        System.out.println("4. Ver inventario");

        int opcion = leerOpcion(4);

        if (opcion == 1) {
            escenaActual = 14;
            decisionesTomadas++;
        } else if (opcion == 2) {
            escenaActual = 10;
            decisionesTomadas++;
        } else if (opcion == 3) {
            mostrarMapa();
            mapasVistos++;
        } else if (opcion == 4) {
            mostrarInventario();
        }
    }

    public static void escena10() {
        mostrarEscena(10,
                "Llegas a una gran sala." +
                        "En el centro hay un portal brillante y pulsante." +
                        "Puedes oir la voz de Will del otro lado:" +
                        "'¡Ayuda! ¡Estoy aqui!'");

        mostrarInventario();

        System.out.println("");
        System.out.println("1. Usar la llave en el portal");
        System.out.println("2. Entrar directamente al portal");
        System.out.println("3. Buscar mas equipo primero");

        int opcion = leerOpcion(3);

        if (opcion == 1) {
            if (tieneItem("llave")) {
                escenaActual = 98;
            } else {
                System.out.println("");
                System.out.println("¡No tienes la llave!");
                escenaActual = 100;
            }
        } else if (opcion == 2) {
            escenaActual = 99;
        } else {
            escenaActual = 14;
        }

        decisionesTomadas++;
    }

    public static void escena11() {
        mostrarEscena(11,
                "Investigas la casa de Will." +
                        "Encuentras su bicicleta abandonada." +
                        "Joyce, su madre, esta muy preocupada." +
                        "Te da una foto de Will para que no lo olvides.");

        agregarInventario("foto");

        System.out.println("");
        System.out.println("1. Ir al laboratorio");
        System.out.println("2. Seguir investigando");
        System.out.println("3. Ver mapa");
        System.out.println("4. Ver inventario");

        int opcion = leerOpcion(4);

        if (opcion == 1) {
            escenaActual = 6;
            decisionesTomadas++;
        } else if (opcion == 2) {
            escenaActual = 5;
            decisionesTomadas++;
        } else if (opcion == 3) {
            mostrarMapa();
            mapasVistos++;
        } else if (opcion == 4) {
            mostrarInventario();
        }
    }

    public static void escena12() {
        mostrarEscena(12,
                "Sigues las marcas y llegas a un claro." +
                        "Hay restos de algo... ¿una criatura?" +
                        "El ambiente se siente diferente aqui.");

        System.out.println("");
        System.out.println("1. Investigar los restos");
        System.out.println("2. Volver al camino principal");
        System.out.println("3. Ver mapa");
        System.out.println("4. Ver inventario");

        int opcion = leerOpcion(4);

        if (opcion == 1) {
            escenaActual = 13;
            decisionesTomadas++;
        } else if (opcion == 2) {
            escenaActual = 5;
            decisionesTomadas++;
        } else if (opcion == 3) {
            mostrarMapa();
            mapasVistos++;
        } else if (opcion == 4) {
            mostrarInventario();
        }
    }

    public static void escena13() {
        mostrarEscena(13,
                "Encuentras una entrada secundaria al laboratorio." +
                        "Esta forzada... alguien entro antes que tu." +
                        "Hay rastros de baba extraña en las paredes.");

        System.out.println("");
        System.out.println("1. Entrar con cuidado");
        System.out.println("2. Volver a la entrada principal");
        System.out.println("3. Ver mapa");
        System.out.println("4. Ver inventario");

        int opcion = leerOpcion(4);

        if (opcion == 1) {
            escenaActual = 8;
            decisionesTomadas++;
        } else if (opcion == 2) {
            escenaActual = 6;
            decisionesTomadas++;
        } else if (opcion == 3) {
            mostrarMapa();
            mapasVistos++;
        } else if (opcion == 4) {
            mostrarInventario();
        }
    }

    public static void escena14() {
        mostrarEscena(14,
                "Encuentras una sala de control." +
                        "Los monitores muestran imagenes del 'Upside Down'." +
                        "Ves a Will en una de las pantallas." +
                        "Un mapa muestra la ubicacion del portal principal.");

        System.out.println("");
        System.out.println("1. Ir al portal principal");
        System.out.println("2. Buscar mas informacion");
        System.out.println("3. Ver mapa");
        System.out.println("4. Ver inventario");

        int opcion = leerOpcion(4);

        if (opcion == 1) {
            escenaActual = 10;
            decisionesTomadas++;
        } else if (opcion == 2) {
            escenaActual = 9;
            decisionesTomadas++;
        } else if (opcion == 3) {
            mostrarMapa();
            mapasVistos++;
        } else if (opcion == 4) {
            mostrarInventario();
        }
    }



    public static void manejarAhorcado() {
        boolean gano = jugarAhorcado();

        if (gano) {
            System.out.println("");
            System.out.println("¡CODIGO CORRECTO!");
            System.out.println("La puerta se desbloquea...");
            agregarInventario("llave");
            escenaActual = 8;
        } else {
            System.out.println("");
            System.out.println("CODIGO INCORRECTO.");
            System.out.println("Suena una alarma...");
            System.out.println("Escuchas pasos acercandose...");
            escenaActual = 100;
        }
    }

    public static void manejarMapa() {
        System.out.println("");
        System.out.println("=== MAPA DE HAWKINS ===");
        mostrarMapa();
        mapasVistos++;

        System.out.println("");
        System.out.println("1. Ir al laboratorio (L)");
        System.out.println("2. Explorar el bosque (B)");
        System.out.println("3. Volver al pueblo");

        int opcion = leerOpcion(3);

        if (opcion == 1) {
            escenaActual = 6;
        } else if (opcion == 2) {
            escenaActual = 12;
        } else {
            escenaActual = 5;
        }
    }

    public static void manejarFinales() {
        long tiempoTotal = (System.currentTimeMillis() - tiempoInicio) / 1000;

        if (escenaActual == 98) {
            finalBueno(tiempoTotal);
        } else if (escenaActual == 99) {
            finalNeutro(tiempoTotal);
        } else {
            finalMalo(tiempoTotal);
        }
    }


    public static void finalBueno(long tiempo) {
        System.out.println("");
        System.out.println("╔════════════════════════════════════════╗");
        System.out.println("║         FINAL BUENO                    ║");
        System.out.println("╚════════════════════════════════════════╝");
        System.out.println("");
        System.out.println("Usas la llave para estabilizar el portal.");
        System.out.println("Entras al Upside Down de forma segura.");
        System.out.println("Encuentras a Will y lo sacas justo a tiempo.");
        System.out.println("");
        System.out.println("¡Los chicos celebran! ¡Hawkins esta a salvo!");
        mostrarEstadisticas(tiempo, "VICTORIA");
    }

    public static void finalNeutro(long tiempo) {
        System.out.println("");
        System.out.println("╔════════════════════════════════════════╗");
        System.out.println("║         FINAL NEUTRO                   ║");
        System.out.println("╚════════════════════════════════════════╝");
        System.out.println("");
        System.out.println("Entras al portal sin proteccion...");
        System.out.println("Ves a Will pero no puedes alcanzarlo.");
        System.out.println("El portal se cierra. Escapas pero...");
        System.out.println("Will sigue atrapado en el Upside Down.");
        mostrarEstadisticas(tiempo, "NEUTRAL");
    }

    public static void finalMalo(long tiempo) {
        System.out.println("");
        System.out.println("╔════════════════════════════════════════╗");
        System.out.println("║         FINAL MALO                     ║");
        System.out.println("╚════════════════════════════════════════╝");
        System.out.println("");
        System.out.println("Escuchas un rugido aterrador...");
        System.out.println("El Demogorgon aparece de las sombras.");
        System.out.println("No tienes tiempo de escapar...");
        System.out.println("");
        System.out.println("¡GAME OVER!");
        mostrarEstadisticas(tiempo, "DERROTA");
    }

    public static void mostrarEstadisticas(long tiempo, String resultado) {
        System.out.println("");
        System.out.println("=== ESTADISTICAS DE PARTIDA ===");
        System.out.println("Resultado: " + resultado);
        System.out.println("Tiempo total: " + tiempo + " segundos");
        System.out.println("Items recolectados: " + cantidadItems);
        System.out.println("Mapas consultados: " + mapasVistos);
        System.out.println("Decisiones tomadas: " + decisionesTomadas);
        System.out.println("================================");
        System.out.println("");
    }


    public static void agregarInventario(String item) {
        if (tieneItem(item)) {
            return;
        }


        if (cantidadItems < inventario.length) {
            inventario[cantidadItems] = item;
            cantidadItems++;
            System.out.println("");
            System.out.println("[+] Objeto obtenido: " + item);
        }
    }

    public static boolean tieneItem(String item) {

        for (int i = 0; i < cantidadItems; i++) {
            if (inventario[i].equals(item)) {
                return true;
            }
        }
        return false;
    }

    public static void mostrarInventario() {
        System.out.println("");
        System.out.print("[Inventario: ");

        if (cantidadItems == 0) {
            System.out.print("vacio");
        } else {

            for (int i = 0; i < cantidadItems; i++) {
                System.out.print(inventario[i]);
                if (i < cantidadItems - 1) {
                    System.out.print(", ");
                }
            }
        }

        System.out.println("]");
    }



    public static boolean jugarAhorcado() {

        String[] palabras = {"demogorgon", "hawkins", "mindflayer", "upside", "eleven", "hopper"};

        int indice = (int)(Math.random() * palabras.length);
        String palabra = palabras[indice];


        char[] estado = new char[palabra.length()];


        for (int i = 0; i < estado.length; i++) {
            estado[i] = '_';
        }

        int intentos = 6;
        String letrasUsadas = "";

        System.out.println("");
        System.out.println("╔════════════════════════════════════════╗");
        System.out.println("║     AHORCADO STRANGER THINGS           ║");
        System.out.println("╚════════════════════════════════════════╝");


        while (intentos > 0) {
            System.out.println("");
            System.out.println("Palabra: " + arrayAString(estado));
            System.out.println("Intentos restantes: " + intentos);
            System.out.println("Letras usadas: " + letrasUsadas);
            dibujarAhorcado(intentos);
            System.out.println("");
            System.out.print("Introduce una letra: ");

            String entrada = sc.nextLine().toLowerCase().trim();


            if (entrada.length() != 1 || !esLetra(entrada.charAt(0))) {
                System.out.println("Solo una letra valida.");
                continue;
            }

            char letra = entrada.charAt(0);


            if (letraYaUsada(letra, letrasUsadas)) {
                System.out.println("Ya usaste esa letra.");
                continue;
            }

            letrasUsadas = letrasUsadas + letra + " ";

            boolean acierto = false;


            for (int i = 0; i < palabra.length(); i++) {
                if (palabra.charAt(i) == letra) {
                    estado[i] = letra;
                    acierto = true;
                }
            }

            if (!acierto) {
                intentos--;
                System.out.println("¡Letra incorrecta!");
            } else {
                System.out.println("¡Correcto!");
            }


            if (!tieneGuionBajo(estado)) {
                System.out.println("");
                System.out.println("¡GANASTE! La palabra era: " + palabra);
                return true;
            }
        }

        dibujarAhorcado(0);
        System.out.println("");
        System.out.println("¡PERDISTE! La palabra era: " + palabra);
        return false;
    }

    public static void dibujarAhorcado(int intentos) {

        String[] dibujos = {
                "  +---+  |   |  O   | /|  | /   |      |=========",
                "  +---+  |   |  O   | /|  | /    |      |=========",
                "  +---+  |   |  O   | /|  |      |      |=========",
                "  +---+  |   |  O   | /|   |      |      |=========",
                "  +---+  |   |  O   |  |   |      |      |=========",
                "  +---+  |   |  O   |      |      |      |=========",
                "  +---+  |   |      |      |      |      |========="
        };

        if (intentos >= 0 && intentos < dibujos.length) {
            System.out.println(dibujos[intentos]);
        }
    }



    public static void mostrarMapa() {
        System.out.println("");
        System.out.println("┌─────────────────────┐");
        System.out.println("│  MAPA DE HAWKINS    │");
        System.out.println("└─────────────────────┘");


        for (int fila = 0; fila < mapa.length; fila++) {
            System.out.print("   ");
            for (int columna = 0; columna < mapa[fila].length; columna++) {
                System.out.print(mapa[fila][columna] + " ");
            }
            System.out.println();
        }

        mostrarLeyendaMapa();
    }


    public static void mostrarMapa(int filaJugador, int colJugador) {

        for (int i = 0; i < mapa.length; i++) {
            for (int j = 0; j < mapa[i].length; j++) {
                if (mapa[i][j] == 'X') {
                    mapa[i][j] = ' ';
                }
            }
        }


        if (filaJugador >= 0 && filaJugador < mapa.length &&
                colJugador >= 0 && colJugador < mapa[0].length) {
            mapa[filaJugador][colJugador] = 'X';
        }

        mostrarMapa();
    }

    public static void mostrarLeyendaMapa() {

        String[] leyenda = {
                "H = Hawkins (pueblo)",
                "L = Laboratorio",
                "B = Bosque",
                "P = Portal",
                "X = Tu posicion",
                "+ = Cruce de caminos"
        };

        System.out.println("");
        System.out.println("--- LEYENDA ---");


        for (int i = 0; i < leyenda.length; i++) {
            System.out.println(leyenda[i]);
        }

        System.out.println("---------------");
    }


    public static String arrayAString(char[] array) {
        String resultado = "";


        for (int i = 0; i < array.length; i++) {
            resultado = resultado + array[i] + " ";
        }

        return resultado;
    }

    public static boolean esLetra(char c) {
        return (c >= 'a' && c <= 'z');
    }

    public static boolean letraYaUsada(char letra, String letrasUsadas) {

        for (int i = 0; i < letrasUsadas.length(); i++) {
            if (letrasUsadas.charAt(i) == letra) {
                return true;
            }
        }
        return false;
    }

    public static boolean tieneGuionBajo(char[] array) {

        for (int i = 0; i < array.length; i++) {
            if (array[i] == '_') {
                return true;
            }
        }
        return false;
    }





    public static void mostrarEscena(int num, String texto) {
        System.out.println("");
        System.out.println("╔════════════════════════════════════════╗");
        System.out.println("║         ESCENA " + num + "                      ║");
        System.out.println("╚════════════════════════════════════════╝");
        System.out.println(texto);
    }

    public static int leerOpcion(int max) {

        while (true) {
            System.out.println("");
            System.out.print("Elige opcion (1-" + max + "): ");
            String entrada = sc.nextLine().trim();


            if (esNumeroValido(entrada)) {
                int numero = Integer.parseInt(entrada);
                if (numero >= 1 && numero <= max) {
                    return numero;
                }
            }

            System.out.println("Opcion invalida. Intenta de nuevo.");
        }
    }

    public static boolean esNumeroValido(String s) {
        if (s == null || s.length() == 0) {
            return false;
        }


        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c < '0' || c > '9') {
                return false;
            }
        }

        return true;
    }
}