--
-- Table structure for table `lse_glfcs_info`
--

DROP TABLE IF EXISTS `lse_glfcs_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_glfcs_info` (
  `glfcs_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '골프장코드',
  `glfcs_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '골프장구분코드',
  `glfcs_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '골프장명',
  `bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자번호',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화일련번호',
  `dtadr` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '상세주소',
  `rglr_odd` decimal(3,0) DEFAULT NULL COMMENT '정규홀수',
  `pubc_odd` decimal(3,0) DEFAULT NULL COMMENT '퍼블릭홀수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`glfcs_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='골프장정보';
