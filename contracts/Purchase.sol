pragma solidity >=0.4.22 <0.7.0;

contract Purchase {
    address public seller;
    address public purchaser;

   struct Voter { // Struct
        uint weight;
        bool voted;
        string name;
        address delegate;
        uint vote;
    }

    Voter public citizen;


    modifier onlySeller() { // Modifier
        require(
            msg.sender == seller,
            "Only seller can call this."
        );
        _;
    }

    function abort() public view onlySeller { // Modifier usage
        // ...
    }
   
    function buy() public payable returns(address y) { // Function
        // ...
        purchaser = msg.sender;
        y =  purchaser;
    }
    function setnumber(uint x) public pure returns(uint y) { // Function
	y = x;
    }

    function register(string memory name) public returns(string memory y) { // Function
       citizen.name = name;
       citizen.delegate = msg.sender;
	y = citizen.name;
    }
}
   
