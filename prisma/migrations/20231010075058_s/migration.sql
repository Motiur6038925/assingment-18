/*
  Warnings:

  - You are about to drop the column `Tag_id` on the `post_tag` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[Category_id]` on the table `Post_tag` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `Category_id` to the `Post_tag` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `post_tag` DROP FOREIGN KEY `Post_tag_Tag_id_foreign`;

-- DropIndex
DROP INDEX `Post_tag_Post_id_foreign` ON `post_tag`;

-- AlterTable
ALTER TABLE `post_tag` DROP COLUMN `Tag_id`,
    ADD COLUMN `Category_id` BIGINT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX `Post_tag_Category_id_key` ON `Post_tag`(`Category_id`);
