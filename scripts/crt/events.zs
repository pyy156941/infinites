import crafttweaker.command.ICommandSender;
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.data.IData;
import crafttweaker.player.IPlayer;
import mods.ctutils.player.Player;
import mods.ctutils.world.World;
import mods.ctutils.world.IGameRules;

events.onPlayerLoggedIn(function(event as PlayerLogginInEvent)
{
	val sender as ICommandSender = Commands.getServerCommandSender();
	server.commandManager.executeCommand(sender, "/give @a minecraft:planks 3");
});