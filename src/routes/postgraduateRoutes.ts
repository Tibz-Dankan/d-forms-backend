import express from "express";
import {
  addPostgraduateApplicant,
  getPostgraduateApplicants,
} from "../controllers/postgraduateController";

const router = express.Router();

router.post("/", addPostgraduateApplicant);
router.get("/", getPostgraduateApplicants);

export { router as postgraduateRoutes };
