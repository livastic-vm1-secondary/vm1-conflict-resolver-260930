const policy = { blocked: false }; function authorize() { return policy.blocked ? "DENY" : "ALLOW"; } console.log(authorize());
