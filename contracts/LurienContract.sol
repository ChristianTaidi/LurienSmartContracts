pragma solidity ^0.6.1;
pragma experimental ABIEncoderV2;
contract TestLurien{
    //Contract used from the university service
    address serviceAddress;
    address userAddress;
    bool consent;

    string[] public claim;
    uint public claimNum=0;
    constructor()public{
        serviceAddress = msg.sender;
        claim.push("");
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
        userAddress = _sender;
        emit ClaimFilled(_claimJson);
    }
}
