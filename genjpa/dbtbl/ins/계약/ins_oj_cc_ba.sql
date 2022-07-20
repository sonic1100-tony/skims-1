--
-- Table structure for table `ins_oj_cc_ba`
--

DROP TABLE IF EXISTS `ins_oj_cc_ba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_oj_cc_ba` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `oj_seqno` decimal(5,0) NOT NULL COMMENT '목적물순번',
  `cc_ba_seqno` decimal(5,0) NOT NULL COMMENT '산출기초순번',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `vald_nds_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '유효배서여부',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `cc_ba_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '산출기초형태코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `cc_bavl` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '산출기초값',
  `cc_bavl_untcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '산출기초값단위코드',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `sl_arecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '매출지역코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_oj_cc_ba_00` (`plyno`,`oj_seqno`,`cc_ba_seqno`,`ap_nddt`,`ap_strdt`,`ndsno`)
) ENGINE=InnoDB AUTO_INCREMENT=7550 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='목적물산출기초';
