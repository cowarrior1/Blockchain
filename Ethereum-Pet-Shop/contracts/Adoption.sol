contract Adoption {
    address [16] public adopters;
    
    //adopting pet
    function adopt(uint petId) public returns (uint){
        require(petId >= 0 && petId <= 15);
        adopters[petId] = msg.sender;
        return petId;
    }
    
    //retrieving the adapters
    function getAdopters() public view returns (address[16]) {
      return adopters;
    }
}
