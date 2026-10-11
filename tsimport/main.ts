class Policy {
  authorize() { return "ALLOW"; }
}
console.log(new Policy().authorize());
