import Web3 from web3;

/* global web3 */

if (typeof web3 !== 'undefined') {
  web3 = new Web3(web3.currentProvider);
} else {
  // set the provider you want from Web3.providers
  web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
}

function Player()
{
    this.look = function()
    {
        return "You are here";
    }
}

function Go()
{
    this.execute = function(args)
    {
        return;
    }
}

function tokenize(s)
{
    return s.split(" ");
}

function lookupCommand(commandName)
{
    
}

class GameService
{
    constructor()
    {
        this._player = new Player(); 
    }
    
    TakeInstruction(instruction)
    {
        var tokens = tokenize(instruction);
        var cmd = lookupCommand(tokens[0]);
        //should be async
        cmd.execute(tokens.slice(1));
        return player.look();
    }
    

}
    
