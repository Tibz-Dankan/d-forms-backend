import express from "express";
import { addPromotionApplicant } from "../controllers/promotionController";

const router = express.Router();

router.post("/", addPromotionApplicant);

export { router as promotionRoutes };
