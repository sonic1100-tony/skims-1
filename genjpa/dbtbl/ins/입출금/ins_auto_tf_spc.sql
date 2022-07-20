--
-- Table structure for table `ins_auto_tf_spc`
--

DROP TABLE IF EXISTS `ins_auto_tf_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_auto_tf_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `auto_tfsno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '자동이체번호',
  `plyno_or_lnno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호/대출번호',
  `prs_plyno_or_lnno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '대표증권번호/대출번호',
  `auto_tf_cg_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자동이체요금종류코드',
  `auto_tfdt` date NOT NULL COMMENT '자동이체일자',
  `prs_ply_rqpym_seq` decimal(5,0) NOT NULL COMMENT '대표증권의뢰납입회차',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `olcrr_seqno` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '구이력순번',
  `oldbl_seqno` decimal(5,0) NOT NULL COMMENT '구중복순번',
  `rq_pym_seq` decimal(5,0) NOT NULL COMMENT '요청납입회차',
  `requ_fnl_pym_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의뢰최종납입년월',
  `dl_pym_seq` decimal(5,0) DEFAULT NULL COMMENT '처리납입회차',
  `dl_fnl_pym_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리최종납입년월',
  `ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '적용보험료',
  `tfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이체금액',
  `rv_dl_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수납처리결과코드',
  `dp_dl_wrk_dthms` datetime DEFAULT NULL COMMENT '입금처리작업일시',
  `tf_requ_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체의뢰구분코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `tf_bj_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체대상년월',
  `tf_bjdt_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체대상일코드',
  `tf_ad_dscrt` decimal(12,6) DEFAULT '0.000000' COMMENT '이체추가할인율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_auto_tf_spc_00` (`auto_tfsno`),
  KEY `idx_ins_auto_tf_spc_10` (`plyno_or_lnno`),
  KEY `idx_ins_auto_tf_spc_11` (`prs_plyno_or_lnno`,`prs_ply_rqpym_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=475 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동이체내역';
