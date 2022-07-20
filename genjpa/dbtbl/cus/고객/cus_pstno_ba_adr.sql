--
-- Table structure for table `cus_pstno_ba_adr`
--

DROP TABLE IF EXISTS `cus_pstno_ba_adr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_pstno_ba_adr` (
  `pstno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '우편번호',
  `pst_sno` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '우편일련번호',
  `sd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시군구',
  `twmd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '읍면동',
  `ri` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '리',
  `adr_book` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주소도서',
  `mntn_stno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '산번지',
  `str_mn_stno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시작주번지',
  `str_sub_stno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시작부번지',
  `end_mn_stno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마지막주번지',
  `end_sub_stno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마지막부번지',
  `lrdlp` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대량배달처',
  `str_dong` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시작동',
  `end_dong` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마지막동',
  `chdt` date DEFAULT NULL COMMENT '변경일자',
  `tot_adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전체주소',
  `bf_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전우편번호',
  `prs_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표여부',
  `srh_twmd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '검색읍면동',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`pstno`,`pst_sno`) USING BTREE,
  KEY `idx_cus_pstno_ba_adr_07` (`bf_pstno`),
  KEY `idx_cus_pstno_ba_adr_99` (`pstno`,`pst_sno`,`sd`,`sgng`,`twmd`),
  KEY `idx_cus_pstno_ba_adr_01` (`sd`,`sgng`,`twmd`),
  KEY `idx_cus_pstno_ba_adr_02` (`sgng`,`twmd`),
  KEY `idx_cus_pstno_ba_adr_04` (`sd`,`sgng`,`srh_twmd`),
  KEY `idx_cus_pstno_ba_adr_05` (`sgng`,`srh_twmd`),
  KEY `idx_cus_pstno_ba_adr_06` (`srh_twmd`),
  KEY `idx_cus_pstno_ba_adr_03` (`twmd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='우편번호기본주소';
