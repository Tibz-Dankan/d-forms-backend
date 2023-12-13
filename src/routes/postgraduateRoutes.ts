import express from "express";
import { addPostgraduate } from "../controllers/postgraduateController";

const router = express.Router();

router.post("/", addPostgraduate);

export { router as postgraduateRoutes };
