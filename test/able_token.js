const AbleToken = artifacts.require("AbleToken");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("AbleToken", function (/* accounts */) {
  it("should assert true", async function () {
    await AbleToken.deployed();
    return assert.isTrue(true);
  });
});
