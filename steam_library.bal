import ballerina/io;

distinct class gamesInSteamLibrary {
    function getKind() returns string {
        return "Game";
    }
}

class radRating {
    function getRadRating() returns boolean {
        return true;
    }
}

type Game object {
    public string title;
    public string publisher;
    public string category;
    public boolean isDownloaded;
    function getsTitle() returns string;
    function getsPublisher() returns string;
    function getsCategory() returns string;
    function getsDownloadedStatus(int condition, int a) returns boolean;
};

distinct class NewWorld {
    *gamesInSteamLibrary;
    *radRating;
    function getKind() returns string {
        return "New World";
    }
    function getRadRating() returns boolean {
        return true;
    }
}

distinct class Valorant {
    *gamesInSteamLibrary;
    *radRating;
    function getKind() returns string {
        return "Valorant";
    }
     function getRadRating() returns boolean {
        return true;
    }
}

public function main() {
    gamesInSteamLibrary newWorld = new NewWorld();
    gamesInSteamLibrary valorant = new Valorant();
    radRating newWorldRadRating = new NewWorld();
    radRating valorantRadRating = new Valorant();

    gamesInSteamLibrary[] games = [newWorld, valorant];

    foreach gamesInSteamLibrary game in games {
        io:println(game.getKind() + "\n");
    }

    radRating[] ratings = [newWorldRadRating, valorantRadRating];

    foreach radRating rating in ratings {
        io:println(rating.getRadRating());
    }
}


