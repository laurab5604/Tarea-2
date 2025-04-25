#!/bin/bash

# Colores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PINK='\033[1;35m'
NC='\033[0m' # Sin color

# Saludo según hora
hora=$(date +"%H")
if [ "$hora" -lt 12 ]; then
    saludo="Buenos días 🌞"
elif [ "$hora" -lt 18 ]; then
    saludo="Buenas tardes ☀️"
else
    saludo="Buenas noches 🌙"
fi

# Presentación
echo -e "${PINK}"
echo "   ❤️  _________   "
echo "  /   \\ Chatbot /   \\"
echo " |  🌸  Tu amigo emocional 🌸 |"
echo "  \\___/_________/  "
echo -e "${NC}"
echo "$saludo, soy tu Chatbot personalizado. Para empezar, elige una opción:"
echo -e "${YELLOW}1. Sentir emociones${NC}"
echo -e "${YELLOW}2. Ver historial emocional${NC}"
echo -e "${YELLOW}3. Salir${NC}"

# Función para mostrar opciones de emociones
mostrar_emociones() {
    echo -e "${YELLOW}Elige una emoción o escribe una de las siguientes opciones:${NC}"
    echo "1. Me siento feliz"
    echo "2. Me siento triste"
    echo "3. Me siento con amor"
    echo "4. Me siento con ansiedad"
    echo "5. Me siento motivado"
    echo "6. Me siento con furia"
    echo "7. Me siento con desagrado"
}

# Función para mostrar opciones de frase o canción
mostrar_opciones() {
    echo -e "${YELLOW}Elige lo que deseas escuchar:${NC}"
    echo "1. Frase motivacional"
    echo "2. Canción recomendada"
}

# Bucle principal
while true; do
    read -p "Tú: " input

    case "$input" in
        "1")
            mostrar_emociones
            read -p "Elige una opción: " emocion
            case "$emocion" in
                1)
                    echo -e "${GREEN}Chat: ¡Qué felicidad saberlo! 😄${NC}"
                    mostrar_opciones
                    read -p "Elige una opción: " opcion
                    case "$opcion" in
                        1)
                            echo -e "${GREEN}Chat: ¡Sigue brillando! 🌟${NC}"
                            ;;
                        2)
                            echo -e "${GREEN}Chat: 🎵 Canción recomendada: 'Happy' - Pharrell Williams${NC}"
                            ;;
                        *)
                            echo -e "${RED}Chat: Opción no válida. Por favor, elige de nuevo.${NC}"
                            ;;
                    esac
                    echo "$(date): Felicidad" >> registro_emociones.txt
                    ;;
                2)
                    echo -e "${BLUE}Chat: Está bien sentirse triste a veces 🌧️${NC}"
                    mostrar_opciones
                    read -p "Elige una opción: " opcion
                    case "$opcion" in
                        1)
                            echo -e "${BLUE}Chat: Llorar es liberar el alma 😢${NC}"
                            ;;
                        2)
                            echo -e "${BLUE}Chat: 🎵 Canción recomendada: 'Fix You' - Coldplay${NC}"
                            ;;
                        *)
                            echo -e "${RED}Chat: Opción no válida. Por favor, elige de nuevo.${NC}"
                            ;;
                    esac
                    echo "$(date): Tristeza" >> registro_emociones.txt
                    ;;
                3)
                    echo -e "${PINK}Chat: El amor es la chispa de la vida 💖${NC}"
                    mostrar_opciones
                    read -p "Elige una opción: " opcion
                    case "$opcion" in
                        1)
                            echo -e "${PINK}Chat: ¡Qué bonito sentir amor! 🌹${NC}"
                            ;;
                        2)
                            echo -e "${PINK}Chat: 🎵 Canción recomendada: 'Perfect' - Ed Sheeran${NC}"
                            ;;
                        *)
                            echo -e "${RED}Chat: Opción no válida. Por favor, elige de nuevo.${NC}"
                            ;;
                    esac
                    echo "$(date): Amor" >> registro_emociones.txt
                    ;;
                4)
                    echo -e "${RED}Chat: Respira... inhalas luz, exhalas preocupación 🌬️${NC}"
                    mostrar_opciones
                    read -p "Elige una opción: " opcion
                    case "$opcion" in
                        1)
                            echo -e "${RED}Chat: Todo pasará, eres más fuerte de lo que crees 🧘${NC}"
                            ;;
                        2)
                            echo -e "${RED}Chat: 🎵 Canción recomendada: 'Weightless' - Marconi Union${NC}"
                            ;;
                        *)
                            echo -e "${RED}Chat: Opción no válida. Por favor, elige de nuevo.${NC}"
                            ;;
                    esac
                    echo "$(date): Ansiedad" >> registro_emociones.txt
                    ;;
                5)
                    echo -e "${GREEN}Chat: ¡A romperla! 🚀${NC}"
                    mostrar_opciones
                    read -p "Elige una opción: " opcion
                    case "$opcion" in
                        1)
                            echo -e "${GREEN}Chat: ¡Hoy es tu día para brillar! 🌟${NC}"
                            ;;
                        2)
                            echo -e "${GREEN}Chat: 🎵 Canción recomendada: 'Eye of the Tiger' - Survivor${NC}"
                            ;;
                        *)
                            echo -e "${RED}Chat: Opción no válida. Por favor, elige de nuevo.${NC}"
                            ;;
                    esac
                    echo "$(date): Motivación" >> registro_emociones.txt
                    ;;
                6)
                    echo -e "${RED}Chat: Respira... no eres tu enojo 🔥${NC}"
                    mostrar_opciones
                    read -p "Elige una opción: " opcion
                    case "$opcion" in
                        1)
                            echo -e "${RED}Chat: Canalizar tu furia puede ser poderoso ⚡${NC}"
                            ;;
                        2)
                            echo -e "${RED}Chat: 🎵 Canción recomendada: 'Numb' - Linkin Park${NC}"
                            ;;
                        *)
                            echo -e "${RED}Chat: Opción no válida. Por favor, elige de nuevo.${NC}"
                            ;;
                    esac
                    echo "$(date): Furia" >> registro_emociones.txt
                    ;;
                7)
                    echo -e "${BLUE}Chat: Está bien no amar todo 🍂${NC}"
                    mostrar_opciones
                    read -p "Elige una opción: " opcion
                    case "$opcion" in
                        1)
                            echo -e "${BLUE}Chat: Tu opinión importa 💬${NC}"
                            ;;
                        2)
                            echo -e "${BLUE}Chat: 🎵 Canción recomendada: 'Creep' - Radiohead${NC}"
                            ;;
                        *)
                            echo -e "${RED}Chat: Opción no válida. Por favor, elige de nuevo.${NC}"
                            ;;
                    esac
                    echo "$(date): Desagrado" >> registro_emociones.txt
                    ;;
                *)
                    echo -e "${RED}Chat: Opción no válida. Por favor, elige de nuevo.${NC}"
                    ;;
            esac
            ;;
        "2")
            echo -e "${BLUE}Chat: Aquí tienes tu historial emocional:${NC}"
            cat registro_emociones.txt
            ;;
        "3")
            echo -e "${GREEN}Chat: Gracias por confiar en mí 💖. ¡Nos vemos pronto! 🌟${NC}"
            break
            ;;
        *)
            echo -e "${YELLOW}Chat: Por favor, elige una opción válida (1, 2 o 3).${NC}"
            ;;
    esac
done

