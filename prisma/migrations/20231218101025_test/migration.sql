-- AlterTable
CREATE SEQUENCE _postgraduate_id_seq;
ALTER TABLE "_postgraduate" ALTER COLUMN "id" SET DEFAULT nextval('_postgraduate_id_seq');
ALTER SEQUENCE _postgraduate_id_seq OWNED BY "_postgraduate"."id";

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
    "receiveDateTime" TEXT NOT NULL,
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
CREATE INDEX "_promotion_id_idx" ON "_promotion"("id");
