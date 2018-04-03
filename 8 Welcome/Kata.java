public class Kata
{
    public static String greet(String language)
    {
        String response = "";
        switch(language)
        {
            case "czech": response = "Vitejte"; break;
            case "danish": response = "Velkomst"; break;
            case "dutch": response = "Welkom"; break;
            case "estonian": response = "Tere tulemast"; break;
            case "finnish": response = "Tervetuloa"; break;
            case "flemish": response = "Welgekomen"; break;
            case "french": response = "Bienvenue"; break;
            case "german": response = "Willkommen"; break;
            case "irish": response = "Failte"; break;
            case "italian": response = "Benvenuto"; break;
            case "latvian": response = "Gaidits"; break;
            case "lithuanian": response = "Laukiamas"; break;
            case "polish": response = "Witamy"; break;
            case "spanish": response = "Bienvenido"; break;
            case "swedish": response = "Valkommen"; break;
            case "welsh": response = "Croeso"; break;
            default: response = "Welcome"; break;
        }

        return response;
    }
}
