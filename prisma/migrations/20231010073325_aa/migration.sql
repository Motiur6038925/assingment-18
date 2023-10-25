/*
  Warnings:

  - A unique constraint covering the columns `[content]` on the table `PostComment` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE `postcomment` MODIFY `content` VARCHAR(191) NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX `PostComment_content_key` ON `PostComment`(`content`);
