const Treasury = artifacts.require("Treasury");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("Treasury", function (/* accounts */) {
  it("should assert true", async function () {
    await Treasury.deployed();
    return assert.isTrue(true);
  });
});
