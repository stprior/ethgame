
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

function GameService()
{
    this._player = new Player(); 

    this.TakeInstruction = function(instruction)
    {
        tokens = tokenize(instruction);
        cmd = lookupCommand(tokens[0]);
        //should be async
        cmd.execute(tokens.slice(1));
        return player.look();
    }
    

}
    
