--
-- Table structure for table `ins_cr_rt`
--

DROP TABLE IF EXISTS `ins_cr_rt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_rt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rtno` varchar(18) COLLATE utf8mb4_bin NOT NULL COMMENT '요율번호',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `vald_nds_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '유효배서여부',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `atrcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '속성코드',
  `rt` decimal(19,7) DEFAULT NULL COMMENT '요율',
  `rt_unt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '요율단위구분코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `relpc_oj_seqno` decimal(10,0) DEFAULT NULL COMMENT '관계자목적물순번',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) DEFAULT NULL COMMENT '담보순번',
  `rk_tpcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위험유형코드',
  `re_rnkno` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재단계번호',
  `scr_idc_ordr` decimal(5,0) DEFAULT NULL COMMENT '화면표시순서',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_cr_rt_00` (`rtno`,`ap_nddt`,`ap_strdt`,`ndsno`),
  KEY `idx_ins_cr_rt_05` (`plyno`,`ap_nddt`,`ap_strdt`,`rt_unt_flgcd`,`rk_tpcd`),
  KEY `idx_ins_cr_rt_03` (`plyno`,`atrcd`,`nds_ap_nd_dthms`,`nds_ap_str_dthms`,`rt_unt_flgcd`,`relpc_oj_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=1070927 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약요율';
