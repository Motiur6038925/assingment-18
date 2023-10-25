/*
  Warnings:

  - A unique constraint covering the columns `[content]` on the table `Tag` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE `tag` MODIFY `metaTitle` VARCHAR(100) NULL,
    MODIFY `slug` VARCHAR(100) NULL,
    MODIFY `content` VARCHAR(255) NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX `Tag_content_key` ON `Tag`(`content`);
