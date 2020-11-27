pragma solidity ^0.7.0;

contract MyContract{
    enum State {Waiting, Ready, Active}
    State public state;
    
    constructor()public{
        state = State.Waiting;
    }
    function activate() public{
        state = State.Active;
    }
    function isActive() public view returns(bool){
        return state  == State.Active;
    }
    function nowWaiting() public{
        state = State.Waiting;
    }
    function nowReady() public{
        state = State.Ready;
    }
    function isReady() public view returns(bool){
        return state == State.Ready;
    }
    function isWaiting() public view returns(bool){
        return state == State.Waiting;
    }
}
