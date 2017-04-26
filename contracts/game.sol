pragma solidity ^0.4.9;


// contract Place {
//     public string Description;
    
    
// }

// contract Go {
    
    
// }
// contract Map {
// //describes navigation between locations
// }

contract Player
{
    function Look() returns (string s)
    {
        return "YOU ARE STANDING AT THE END OF A ROAD BEFORE A SMALL BRICK BUILDING . AROUND YOU IS A FOREST. A SMALL STREAM FLOWS OUT OF THE BUILDING AND DOWN A GULLY.";
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
