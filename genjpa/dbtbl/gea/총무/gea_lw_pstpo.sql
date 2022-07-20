--
-- Table structure for table `gea_lw_pstpo`
--

DROP TABLE IF EXISTS `gea_lw_pstpo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_lw_pstpo` (
  `acdno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '사건번호',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `lw_prty_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송당사자구분코드',
  `defnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피고명',
  `planm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원고명',
  `trd_debnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제3채무자명',
  `jrd_crtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관할법원코드',
  `chr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당기관코드',
  `rgt_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록기관코드',
  `rgt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록직원번호',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `lw_pstpo_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송우편물처리구분코드',
  `memo` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메모',
  `inp_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입력시간',
  `rcp_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수직원번호',
  `rcpdt` date DEFAULT NULL COMMENT '접수일자',
  `rcp_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수시간',
  `chdt` date DEFAULT NULL COMMENT '변경일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`acdno`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='소송우편물';
