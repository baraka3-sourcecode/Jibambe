// SPDX-License-Identifier: MIT
pragma solidity ^ 0.6.0; 

contract JibambeToken
{
mapping (address=>uint256) balances;
mapping(address =>mapping(address => uint256))allowed;
uint256  _totalsupply = 90000000000 * 90000000;
address public owner;
event Approval(address indexed _owner, address indexed _spender, uint256 _value); 
event transfer (address indexed _from , address indexed _to ,uint256 _value);
function totalsupply()
public view returns (uint256 theTotalsupply) 
{
    theTotalsupply = _totalsupply;
    return theTotalsupply;
}
function balanceof(address _owner)public view returns(uint256 balance)
  {
   return balances[_owner];  
  }
function approve (address _spender,uint256)public returns (bool success)
{
    allowed[msg.sender][_spender] = _amount; 

    emit approval( msg.sender, _spender, _amount) public returns(bool success)
    {
         if ( balances [ msg.sender] >= _amount  )
         {
            balances [msg.sender] -= _amount;
            balances [ _to ] = +_amount;
            emit transfer(msg.sender, _to , _amount); 
            return true;
         }
         else
         {
         return false;
         }
         function Transferfrom(address _from,address _to , uint256 _amount )public returns(bool success)
{
 if(balances[ _from] >= _amount && allowed [ _from ][msg.sender] >= _amount && _amount > 0 && balances[_to]+ _amount > balances[_to])
  {
    balances [_from] - =  _amount;
    balances [ _to ] += _amount;
    emit transfer(_from,_to,_amount);
    return true;

  }
  else 
  {
   return false;
  }  

  function allowance(address _owner,address _spender)public view returns(uint256 remaining)
  {
    returns allowed[_owner][_spender];
  }

} 
  

}    

