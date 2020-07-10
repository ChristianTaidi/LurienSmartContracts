pragma solidity ^0.6.1;
pragma experimental ABIEncoderV2;
contract TestLurien{
    //Contract used from the university service
    address serviceAddress;
    string servicePubK;
    address userAddress;
    bool consent;

    string[] public claim;
    uint public claimNum=0;
    constructor(string memory _servicePubK)public{
        serviceAddress = msg.sender;
        servicePubK = _servicePubK;
        claim.push("");
        claim.push(servicePubK);
        claim.push("dni");
        claim.push("name");
        claim.push("accessTestCertificate");
        claim.push("accessTestMark");
    }
    function getClaim()public{
        emit ClaimRequested(claim);
    }
    event ClaimFilled(
        string _filledClaim
    );

    event ClaimRequested(
        string[] _claimRequested
    );

    function claimFilled(string memory _claimJson,address _sender) public {
        // Events are emitted using `emit`, followed by
        // the name of the event and the arguments
        // (if any) in parentheses. Any such invocation
        // (even deeply nested) can be detected from
        // the JavaScript API by filtering for `Deposit`.
        if(!consent){
            userAddress = _sender;
            consent = true;
            emit ClaimFilled(_claimJson);
        }
    }

    function toString(address x) private returns (string memory) {
        bytes memory s = new bytes(40);
        for (uint i = 0; i < 20; i++) {
            byte b = byte(uint8(uint(x) / (2**(8*(19 - i)))));
            byte hi = byte(uint8(b) / 16);
            byte lo = byte(uint8(b) - 16 * uint8(hi));
            s[2*i] = char(hi);
            s[2*i+1] = char(lo);            
        }
        return string(s);
    }

    function char(byte b) private returns (byte c) {
        if (uint8(b) < 10) return byte(uint8(b) + 0x30);
        else return byte(uint8(b) + 0x57);
    }
}
