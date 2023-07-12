-- ----------------------------
-- Table structure for archive_authors
-- ----------------------------
DROP TABLE IF EXISTS `archive_authors`;
CREATE TABLE `archive_authors`
(
    `archive_id` bigint(20)                        NOT NULL,
    `author`     varchar(60) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
    PRIMARY KEY (`archive_id`, `author`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

-- ----------------------------
-- Table structure for archive_origs
-- ----------------------------
DROP TABLE IF EXISTS `archive_origs`;
CREATE TABLE `archive_origs`
(
    `archive_id` bigint(20)                         NOT NULL,
    `orig`       varchar(255) CHARACTER SET utf8mb4 NOT NULL,
    PRIMARY KEY (`archive_id`, `orig`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

-- ----------------------------
-- Table structure for archive_publishers
-- ----------------------------
DROP TABLE IF EXISTS `archive_publishers`;
CREATE TABLE `archive_publishers`
(
    `archive_id` bigint(20)                        NOT NULL,
    `publisher`  varchar(60) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
    PRIMARY KEY (`archive_id`, `publisher`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

-- ----------------------------
-- Table structure for archive_remarks
-- ----------------------------
DROP TABLE IF EXISTS `archive_remarks`;
CREATE TABLE `archive_remarks`
(
    `archive_id` bigint(20)                       NOT NULL,
    `remarks`    mediumtext CHARACTER SET utf8mb4 NOT NULL,
    PRIMARY KEY (`archive_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

-- ----------------------------
-- Table structure for archive_tags
-- ----------------------------
DROP TABLE IF EXISTS `archive_tags`;
CREATE TABLE `archive_tags`
(
    `archive_id` bigint(20)                        NOT NULL,
    `tag`        varchar(60) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
    PRIMARY KEY (`archive_id`, `tag`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

-- ----------------------------
-- Table structure for archives
-- ----------------------------
DROP TABLE IF EXISTS `archives`;
CREATE TABLE `archives`
(
    `id`            bigint(20)           NOT NULL,
    `created_at`    bigint(20)           NOT NULL,
    `updated_at`    bigint(20)           NOT NULL,
    `title`         varchar(255)         NOT NULL DEFAULT '',
    `publish_year`  smallint(4) unsigned NOT NULL,
    `publish_month` tinyint(2)           NOT NULL,
    `chapter`       varchar(4)           NOT NULL DEFAULT '',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
