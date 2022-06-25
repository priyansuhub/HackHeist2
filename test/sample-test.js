const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Greeter", function () {
  it("Should return the new greeting once it's changed", async function () {
    let originalText =
      ethers.utils.parseBytes32String(
        0xb2fc9a43b90dd0d07cfa19af13584f1ffed86995312d726cfc4379e5b7665284
      );
    console.log(originalText);
  });
});
