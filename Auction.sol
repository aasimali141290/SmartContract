pragma solidity ^0.4.17;
contract Auction{
mapping(address=>uint256) people;  
bytes32 currentBid;
string public bidIteam;
address bidder;
address owner;
uint256 previous;
uint256 current;
uint256  totalTime;
event highBidAmount(address,uint256);
modifier onlyAdmin(){
		if(msg.sender != owner) throw;
		_;
	}
function Auction(){
    bidIteam="Valuable";
    owner=msg.sender;
    previous=0;
    totalTime =now+ 2 * 1 minutes;
}
function bid(uint256 _amount)returns(bool){
    current=_amount;
    people[msg.sender]=_amount;
    if (now<totalTime){
       if (previous+10<current) {
           if(people[msg.sender]){
               
           }
           
           
           previous=current;
           bidder=msg.sender;
           highBidAmount(bidder,previous);
        }
    }
    
    return true;
}
function timeleft()constant returns(uint256 _aution_end_in){
    uint256 aution_end_in;
    aution_end_in=totalTime-now;
    return aution_end_in;
    
    
    
}
function grantBid(address _bidwinner)onlyAdmin returns(address){
    address bidwinner=_bidwinner;
    return bidwinner;
    
}



}
