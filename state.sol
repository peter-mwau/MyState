// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.20;

contract MyState{
    enum State {Waiting, Ready, Active}
    State public state;

    constructor() {
        state = State.Waiting;
    }

    function activate() public {
        state = State.Active;
    }

    function isActive() public view returns(bool){
        return state == State.Active;
    }
}