# Colores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PINK='\033[1;35m'
NC='\033[0m' # Sin color

hora=$(date +"%H")
if [ "$hora" -lt 12 ]; then
    saludo="Buenos días 🌞"
elif [ "$hora" -lt 18 ]; then
    saludo="Buenas tardes ☀️"
else
    saludo="Buenas noches 🌙"
fi

echo -e "${PINK}"
echo "   ❤️  _________   "
echo "  /   \\ Chatbot /   \\"
echo " |  🌸  Tu amigo emocional 🌸 |"
echo "  \\___/_________/  "
echo -e "${NC}"
echo "$saludo, soy Chatbot personalizado. Escribe cómo te sientes o escribe 'salir' para terminar."

while true; do
    read -p "Tú: " input
    case "$input" in
        "hola")
            echo -e "${GREEN}Chat: ¡Hola! Me alegra verte por aquí 🌞${NC}"
            ;;

        "me siento triste")
            echo -e "${BLUE}Chat: A veces llorar es una forma de sanar 😢"
            echo "Chat: No estás sola/o, estoy aquí para ti 🫂"
            echo "Chat: 🎵 Canción recomendada: 'Fix You' - Coldplay${NC}"
            echo "$(date): Tristeza" >> registro_emociones.txt
            ;;

        "me siento feliz")
            echo -e "${YELLOW}Chat: ¡Qué bonito saber que estás feliz! 😄"
            echo "Chat: Tu alegría se contagia 🌈"
            echo "Chat: 🎵 Canción recomendada: 'Happy' - Pharrell Williams${NC}"
            echo "$(date): Felicidad" >> registro_emociones.txt
            ;;

        "me siento con amor"|"me siento enamorado"|"me siento enamorada")
            echo -e "${PINK}Chat: El amor es un regalo hermoso 💖"
            echo "Chat: Gracias por compartir tus sentimientos 🌹"
            echo "Chat: 🎵 Canción recomendada: 'Perfect' - Ed Sheeran${NC}"
            echo "$(date): Amor" >> registro_emociones.txt
            ;;

        "me siento con ansiedad")
            echo -e "${RED}Chat: Respira profundamente... Inhala, exhala 🧘"
            echo "Chat: Todo estará bien. No estás sola/o 🤝"
            echo "Chat: 🎵 Canción recomendada: 'Weightless' - Marconi Union${NC}"
            echo "$(date): Ansiedad" >> registro_emociones.txt
            ;;

        "me siento motivado"|"me siento motivada")
            echo -e "${GREEN}Chat: Cree en ti. ¡Tú puedes con esto y más! 💪"
            echo "Chat: 🎵 Canción recomendada: 'Eye of the Tiger' - Survivor${NC}"
            echo "$(date): Motivación" >> registro_emociones.txt
            ;;

        "me siento con furia"|"me siento enojado"|"me siento enojada")
            echo -e "${RED}Chat: Canalizar tu enojo es válido 🔥"
            echo "Chat: Respira, libera, avanza 🧯"
            echo "Chat: 🎵 Canción recomendada: 'Numb' - Linkin Park${NC}"
            echo "$(date): Furia" >> registro_emociones.txt
            ;;

        "me siento con desagrado")
            echo -e "${BLUE}Chat: No todo debe gustarte. Tienes derecho a decir no ❌"
            echo "Chat: 🎵 Canción recomendada: 'Creep' - Radiohead${NC}"
            echo "$(date): Desagrado" >> registro_emociones.txt
            ;;

        "me siento con envidia")
            echo -e "${YELLOW}Chat: Lo que ves en otros, también vive en ti 🌱"
            echo "Chat: 🎵 Canción recomendada: 'Jealous' - Labrinth${NC}"
            echo "$(date): Envidia" >> registro_emociones.txt
            ;;

        "me siento aburrido"|"me siento aburrida")
            echo -e "${BLUE}Chat: A veces el aburrimiento te lleva a nuevas ideas 💭"
            echo "Chat: 🎵 Canción recomendada: 'Bored' - Billie Eilish${NC}"
            echo "$(date): Aburrimiento" >> registro_emociones.txt
            ;;

        "me siento con vergüenza")
            echo -e "${PINK}Chat: Todos pasamos por eso... ¡Eres humano/a! ❤️"
            echo "Chat: 🎵 Canción recomendada: 'Beautiful' - Christina Aguilera${NC}"
            echo "$(date): Vergüenza" >> registro_emociones.txt
            ;;

        "ver historial")
            echo -e "${BLUE}Chat: Aquí está tu historial emocional:${NC}"
            cat registro_emociones.txt
            ;;

        "salir")
            echo -e "${GREEN}Chat: Gracias por confiar en mí. Cuídate mucho. Tu corazón importa. 🌟${NC}"
            break
            ;;

        *)
            echo -e "${YELLOW}Chat: No sé bien cómo responder eso, pero estoy aquí para ti 💌${NC}"
            ;;
    esac
done
