// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract Treasury is Ownable {
  
  using SafeMath for uint256;
  using SafeERC20 for IERC20;

  event AddSpeculativeToken(address erc20);
  event AddStableToken(address erc20);

  address[] public speculativeTokens;
  address[] public stableTokens;

  constructor() {}

  function addToken(address erc20, bool isStable) external onlyOwner {
    if (isStable) {
      stableTokens.push(erc20);
      emit AddStableToken(erc20);
      return;
    }

    speculativeTokens.push(erc20);
    emit AddSpeculativeToken(erc20);
  }

  
}
