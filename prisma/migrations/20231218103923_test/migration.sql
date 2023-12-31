-- CreateTable
CREATE TABLE "_postgraduate" (
    "id" SERIAL NOT NULL,
    "surname" TEXT NOT NULL,
    "givenname" TEXT NOT NULL,
    "othername" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "gender" TEXT NOT NULL,
    "dateOfBirth" TEXT NOT NULL,
    "maritalStatus" TEXT NOT NULL,
    "religiousAffiliation" TEXT NOT NULL,
    "intake" TEXT NOT NULL,
    "campus" TEXT NOT NULL,
    "program" TEXT NOT NULL,
    "nationality" TEXT NOT NULL,
    "countyOfResidence" TEXT NOT NULL,
    "homeDistrict" TEXT NOT NULL,
    "homeDiocese" TEXT NOT NULL,
    "disability" JSONB NOT NULL,
    "contact" JSONB NOT NULL,
    "parentGuardian" JSONB NOT NULL,
    "educationBackground" JSONB NOT NULL,
    "referee" JSONB NOT NULL,
    "otherQualification" JSONB NOT NULL,
    "christianPhilosophyAffirmation" JSONB NOT NULL,
    "declaration" JSONB NOT NULL,
    "officialUseRecommendation" JSONB NOT NULL,
    "employerRecord" JSONB NOT NULL,
    "courseChoiceWorkExperience" JSONB NOT NULL,
    "waysIKnewAboutUCU" JSONB NOT NULL,
    "whyUCU" JSONB NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3),

    CONSTRAINT "_postgraduate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_promotion" (
    "id" SERIAL NOT NULL,
    "familyname" TEXT NOT NULL,
    "firstname" TEXT NOT NULL,
    "maidenname" TEXT NOT NULL,
    "gender" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "telephone" TEXT NOT NULL,
    "dateOfBirth" TEXT NOT NULL,
    "receiveDate" TEXT NOT NULL,
    "receiveTime" TEXT NOT NULL,
    "nationality" TEXT NOT NULL,
    "campus" JSONB NOT NULL,
    "education" JSONB NOT NULL,
    "employmentRecord" JSONB NOT NULL,
    "faithAndUnderstandingChristianity" JSONB NOT NULL,
    "professionalBody" JSONB NOT NULL,
    "publication" JSONB NOT NULL,
    "references" JSONB NOT NULL,
    "statementOfResearch" JSONB NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3),

    CONSTRAINT "_promotion_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "_postgraduate_id_idx" ON "_postgraduate"("id");

-- CreateIndex
CREATE INDEX "_promotion_id_idx" ON "_promotion"("id");
