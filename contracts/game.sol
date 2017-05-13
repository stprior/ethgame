pragma solidity ^0.4.9;

//Anything that can be contained 
contract GameObject {
    
    
}

contract Container 
{
    GameObject[] contents;
    
}

//Locations are contracts which represent a room
//Can be mapped to a description in an external service 
contract Location extends Container {
    function remove(GameObject g)
    {
        this.contents.remove(g);
    }
    function add(GameObject g)
    {
        this.contents.add(g);
    }
    
}

//special GameObject which associated with a specific player, used as a context for other actions
contract Player extends GameObject
{
    Location currentLocation;

}

//external service looks up directions from text
contract Direction 
{
    
}

//All places navigable from a particular location.
contract Exits
{
    mapping(Direction => Location) exits;
}

//
contract Map {
    function Map()
    {
        //construct a static map and create associated locations and exits
        
    }
    mapping(Location => Exits) graph;
    mapping(string  => Direction) directions;

    
    Location start;
    
}

//external service can map text to an instance of Action
contract Action 
{
    //function doAction(Actor a, arguments...)

}

contract Go extends Action {
    function doAction(Player p, Direction d)
    {
        var l1 = p.location;
        var exits = map.graph[l1];
        var l2 = exits[d];//error if not found
        l1.remove(p);
        l2.add(p);
        p.location = l2;
        
    }
}

struct GameDescription
{
    Location[] locations;
}
contract Game
{
    

    function Game()
    {
        //Setup initial locations and map
        var description = new GameDescription();
        locations.push(new Location());
        
        
    }

    function Play() returns (Player newPlayer)
    {
        return new Player();
    }
    
}
