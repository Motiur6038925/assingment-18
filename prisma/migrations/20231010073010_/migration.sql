/*
  Warnings:

  - You are about to drop the column `Post_id` on the `postcomment` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE `postcomment` DROP FOREIGN KEY `PostComment_Post_id_foreign`;

-- AlterTable
ALTER TABLE `postcomment` DROP COLUMN `Post_id`,
    MODIFY `published` TINYTEXT NULL;
