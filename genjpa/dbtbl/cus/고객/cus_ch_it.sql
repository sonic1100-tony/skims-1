--
-- Table structure for table `cus_ch_it`
--

DROP TABLE IF EXISTS `cus_ch_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ch_it` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ch_dlno` varchar(14) COLLATE utf8mb4_bin NOT NULL COMMENT '변경처리번호',
  `ch_itno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '변경항목번호',
  `ch_seqno` decimal(5,0) NOT NULL COMMENT '변경순번',
  `chbvl` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전값',
  `chavl` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후값',
  `ba_ky_clmvl_1` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값1',
  `ba_ky_clmvl_2` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값2',
  `ba_ky_clmvl_3` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값3',
  `ba_ky_clmvl_4` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값4',
  `ba_ky_clmvl_5` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값5',
  `ba_ky_clmvl_6` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값6',
  `ba_ky_clmvl_7` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값7',
  `ba_ky_clmvl_8` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값8',
  `ba_ky_clmvl_9` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값9',
  `ba_ky_clmvl_10` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값10',
  `onds_ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구배서고객식별번호',
  `onds_dt` date DEFAULT NULL COMMENT '구배서일자',
  `onds_no` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구배서번호',
  `onds_itvl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구배서항목값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ch_it_00` (`ch_dlno`,`ch_itno`,`ch_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=1386 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='변경항목';
