--
-- Table structure for table `ins_ins_cr_bld`
--

DROP TABLE IF EXISTS `ins_ins_cr_bld`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ins_cr_bld` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `oj_seqno` decimal(5,0) NOT NULL COMMENT '목적물순번',
  `bld_seqno` decimal(5,0) NOT NULL COMMENT '건물순번',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `vald_nds_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '유효배서여부',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `bld_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '건물구분코드',
  `prs_btpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표업종코드',
  `bldnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물명',
  `bld_xpnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물설명',
  `bld_strcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물구조코드',
  `bld_rnkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물급수코드',
  `ttare` decimal(17,2) DEFAULT '0.00' COMMENT '연면적',
  `are_untcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면적단위코드',
  `bld_pst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물위치구분코드',
  `grod_fl` decimal(6,0) DEFAULT NULL COMMENT '지상층',
  `undg_fl` decimal(6,0) DEFAULT NULL COMMENT '지하층',
  `hght` decimal(5,0) DEFAULT NULL COMMENT '높이',
  `spcl_bld_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특수건물여부',
  `cmkng_dstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공지거리코드',
  `et_str_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타구조내용',
  `is_are` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '가입면적',
  `is_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입유형코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_ins_cr_bld_00` (`plyno`,`oj_seqno`,`bld_seqno`,`ap_nddt`,`ap_strdt`,`ndsno`)
) ENGINE=InnoDB AUTO_INCREMENT=5764 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험계약건물';
