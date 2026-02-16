module Helper exposing (..)

import Html exposing (Html, div, h1, li, text, ul)


sumarDos : Int -> Int -> Int
sumarDos primerNumero segundoNumero =
    primerNumero + segundoNumero


sumarTres : Float -> Float -> Float -> Float
sumarTres a b c =
    a + b + c


ejecutarOperacion : Int -> Int -> (Int -> Int -> Int) -> Int
ejecutarOperacion n1 n2 operacion =
    operacion n1 n2


type alias Lenguaje =
    { nombre : String
    , añoLanzamiento : Int
    , versionActual : String
    }


obtenerNombres : List Lenguaje -> List String
obtenerNombres listaLenguajes =
    List.map .nombre listaLenguajes


type alias Usuario =
    { nombre : String
    , rol : String
    }


soloEstudiantes : List Usuario -> List String
soloEstudiantes listaUsuarios =
    List.map
        (\usuario ->
            case usuario.rol of
                "Student" ->
                    usuario.nombre

                _ ->
                    ""
        )
        listaUsuarios


type alias Videojuego =
    { titulo : String
    , año : Int
    , disponible : Bool
    , descargas : Int
    , generos : List String
    }


obtenerGeneros : List Videojuego -> List (List String)
obtenerGeneros listaJuegos =
    List.map .generos listaJuegos


type alias Computadora =
    { memoriaRam : String
    , modelo : String
    , marca : String
    , tamañoPantalla : String
    }


miPortatil : Computadora
miPortatil =
    { memoriaRam = "16GB"
    , modelo = "Vivobook"
    , marca = "ASUS"
    , tamañoPantalla = "15in"
    }


main : Html msg
main =
    div
        []
        [ h1 [] [ text "Mi Computadora" ]
        , div []
            [ ul []
                [ li []
                    [ text ("RAM: " ++ miPortatil.memoriaRam)
                    ]
                , li []
                    [ text ("Modelo: " ++ miPortatil.modelo)
                    ]
                , li []
                    [ text ("Marca: " ++ miPortatil.marca)
                    ]
                , li []
                    [ text ("Pantalla: " ++ miPortatil.tamañoPantalla)
                    ]
                ]
            ]
        ]



--fix
