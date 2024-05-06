// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
import "remix_tests.sol";
import "remix_accounts.sol";
import "../contracts/Fungees.sol";

contract MyTokenTest {

    MyToken s;

    function beforeAll () public {
        address acc0 = TestsAccounts.getAccount(0);
        // acc0 will be set as initial owner
        s = new Fungees(acc0);
    }

    function testTokenNameAndSymbol () public {
        Assert.equal(s.name(), "Fungees", "token name did not match");
        Assert.equal(s.symbol(), "FUN", "token symbol did not match");
    }
}
