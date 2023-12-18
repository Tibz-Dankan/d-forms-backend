import { Request, Response, NextFunction } from "express";
import { AppError } from "../utils/error";
import { asyncHandler } from "../utils/asyncHandler";
import { transformToArrayOfObjects } from "../utils/transformToArrayOfObjects";

import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();
const Promotion = prisma.promotion;

const extractItemKey = (item: any) => {
  const key = Object.keys(item)[0];
  return key;
};

export const addPromotionApplicant = asyncHandler(
  async (req: Request, res: Response, next: NextFunction) => {
    const data = req.body.data;

    if (!data) return next(new AppError("Please provide applicant data", 400));

    const applicantData = JSON.parse(data).categories;
    const personalInfo = applicantData.personalInfo;

    // Attach personalInfo properties on the applicant data
    const personalInfoArray = transformToArrayOfObjects(personalInfo);

    personalInfoArray.map((item) => {
      const key = extractItemKey(item);
      applicantData[key] = personalInfo[key];
    });

    // Remove personalInfo property
    delete applicantData.personalInfo;

    await Promotion.create({
      data: applicantData,
      select: {
        id: true,
        firstname: true,
        familyname: true,
        createdAt: true,
        updatedAt: true,
      },
    });

    res
      .status(201)
      .json({ status: "success", message: "created successfully" });
  }
);
