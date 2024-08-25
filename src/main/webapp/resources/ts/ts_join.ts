import { z } from "zod";

const userSchema = z.object({
    userId : z.string(),
    userPw : z.string(),
    userNm : z.string(),
    userEmail : z.string(),
    userTelno : z.string(),
});

console.log(userSchema);