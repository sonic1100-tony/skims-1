--
-- Table structure for table `ins_cr_aqr_rt`
--

DROP TABLE IF EXISTS `ins_cr_aqr_rt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_aqr_rt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `aqr_rt_seqno` decimal(5,0) NOT NULL COMMENT '구득요율순번',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `vald_nds_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '유효배서여부',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `rt_aqr_unt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율구득단위구분코드',
  `aqr_rt` decimal(15,7) NOT NULL DEFAULT '0.0000000' COMMENT '구득요율',
  `rt_aqr_rqno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율구득신청번호',
  `aqr_rt_ap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '구득요율적용여부',
  `oj_seqno` decimal(5,0) DEFAULT NULL COMMENT '목적물순번',
  `oj_bdlno` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '목적물일괄번호',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) DEFAULT NULL COMMENT '담보순번',
  `rk_tpcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위험유형코드',
  `krre_gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '코리안리상품코드',
  `krre_crtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '코리안리계약자코드',
  `krre_btpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '코리안리업종코드',
  `note_1` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고1',
  `note_2` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고2',
  `note_3` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고3',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_cr_aqr_rt_00` (`plyno`,`aqr_rt_seqno`,`ap_nddt`,`ap_strdt`,`ndsno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약구득요율';
