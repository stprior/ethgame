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

//special GameObject which associated witha specific player, used as a context for other actions
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
        l1 = p.location;
        exits = map.graph[l1];
        l2 = exits[d];//error if not found
        l1.
        l2.add
        
    }
}

contract Game
{
    function Game()
    {
        //Setup initial locations and map
    }

    function Play() returns (Player newPlayer)
    {
        return new Player();
    }
    
}
