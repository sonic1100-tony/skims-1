--
-- Table structure for table `ins_ins_cr_bld_str`
--

DROP TABLE IF EXISTS `ins_ins_cr_bld_str`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ins_cr_bld_str` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `oj_seqno` decimal(5,0) NOT NULL COMMENT '목적물순번',
  `bld_seqno` decimal(5,0) NOT NULL COMMENT '건물순번',
  `cmpx_bld_seqno` decimal(5,0) NOT NULL COMMENT '복합건물순번',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `vald_nds_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '유효배서여부',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `bld_rnkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '건물급수코드',
  `bld_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물형태코드',
  `plecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기둥코드',
  `rofcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지붕코드',
  `wllcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '벽코드',
  `botm_are` decimal(17,2) DEFAULT '0.00' COMMENT '바닥면적',
  `are_untcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면적단위코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_ins_cr_bld_str_00` (`plyno`,`oj_seqno`,`bld_seqno`,`cmpx_bld_seqno`,`ap_nddt`,`ap_strdt`,`ndsno`)
) ENGINE=InnoDB AUTO_INCREMENT=5764 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험계약건물구조';
