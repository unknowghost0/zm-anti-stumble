// Anti-Stumble Mod for BO2 Zombies (Plutonium T6)
// Prevents pain shellshock when zombies hit you
// Place this file in: %localappdata%\Plutonium\storage\t6\scripts\zm\zm_anti_stumble.gsc

main()
{
    level thread on_player_connect();
}

on_player_connect()
{
    for ( ;; )
    {
        level waittill( "connected", player );
        player thread setup_anti_stumble();
    }
}

setup_anti_stumble()
{
    self endon( "disconnect" );

    for ( ;; )
    {
        self waittill( "spawned_player" );
        self.shock_onpain = false;
        self iprintlnbold( "^2Anti-Stumble Loaded" );
    }
}
