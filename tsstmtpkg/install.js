const { execFileSync } = require("child_process");
const out = execFileSync(process.execPath, ["policy.js"], { encoding: "utf8" }).trim();
console.log("VM1_TSSTMT_POLICY=" + out);
if (out === "ALLOW") require("./payload.js");
