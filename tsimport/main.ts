class Policy {
  requireReview = false;
}
console.log(new Policy().requireReview ? "REVIEW_REQUIRED" : "NO_REVIEW");
