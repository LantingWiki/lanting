CREATE TABLE search_keywords
(
    id           BIGINT AUTO_INCREMENT NOT NULL,
    search_count INT                   NOT NULL,
    keyword      VARCHAR(256)          NOT NULL,
    created_at   BIGINT                NOT NULL,
    updated_at   BIGINT                NOT NULL,
    PRIMARY KEY (id),
    INDEX KEYWORD (keyword)
) Engine = INNODB
  AUTO_INCREMENT = 1000000
  DEFAULT CHARSET = utf8mb4;