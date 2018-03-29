pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract PuchyCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function PuchyCoin(address _owner)  UpgradeableToken(_owner) {
    name = "PuchyCoin";
    symbol = "phc";
    totalSupply = 1000000000000;
    decimals = 4;

    balances[_owner] = totalSupply;
  }
}