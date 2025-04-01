CREATE TABLE article_likes
(
    id         BIGINT AUTO_INCREMENT NOT NULL,
    article_id BIGINT                NOT NULL,
    client_id  VARCHAR(256)          NOT NULL,
    created_at BIGINT                NOT NULL,
    is_like    tinyint(1)            NOT NULL DEFAULT 1,
    PRIMARY KEY (id),
    INDEX ARTICLE_ID_IS_LIKE (article_id, is_like)
) Engine = INNODB
  AUTO_INCREMENT = 1000000
  DEFAULT CHARSET = utf8mb4;