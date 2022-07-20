--
-- Table structure for table `ins_pl_aqr_rt`
--

DROP TABLE IF EXISTS `ins_pl_aqr_rt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_aqr_rt` (
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `aqr_rt_seqno` decimal(5,0) NOT NULL COMMENT '구득요율순번',
  `rt_aqr_unt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율구득단위구분코드',
  `aqr_rt` decimal(15,7) NOT NULL DEFAULT '0.0000000' COMMENT '구득요율',
  `rt_aqr_rqno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율구득신청번호',
  `aqr_rt_ap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '구득요율적용여부',
  `re_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재구분코드',
  `isamt_rt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '가입금액비율',
  `rk_tpcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위험유형코드',
  `oj_seqno` decimal(5,0) DEFAULT NULL COMMENT '목적물순번',
  `oj_bdlno` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '목적물일괄번호',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) DEFAULT NULL COMMENT '담보순번',
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
  PRIMARY KEY (`plno`,`cgaf_ch_seqno`,`aqr_rt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계구득요율';
