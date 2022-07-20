--
-- Table structure for table `ins_pl_cvr_inspy_pr`
--

DROP TABLE IF EXISTS `ins_pl_cvr_inspy_pr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_cvr_inspy_pr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '발행후변경순번',
  `pym_seq` decimal(5,0) NOT NULL COMMENT '납입회차',
  `crt_relpc_seqno` decimal(10,0) NOT NULL COMMENT '계약자관계자순번',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `seq_db_seqno` decimal(5,0) NOT NULL COMMENT '회차중복순번',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '적용보험료',
  `woncr_cv_ap_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산적용보험료',
  `pyp_vald_strdt` date DEFAULT NULL COMMENT '분납유효시작일자',
  `pyp_vald_nddt` date DEFAULT NULL COMMENT '분납유효종료일자',
  `nds_ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '배서적용보험료',
  `woncv_nds_ap_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산배서적용보험료',
  `pym_pr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입예정상태코드',
  `trt_ap_cvr_prmsm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '특약적용담보보험료합계',
  `cvr_spqu_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보특성구분코드',
  `cvr_ba_trt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보기본특약구분코드',
  `trt_ap_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특약적용담보코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pl_cvr_inspy_pr_00` (`plno`,`cgaf_ch_seqno`,`pym_seq`,`crt_relpc_seqno`,`mncd`,`seq_db_seqno`,`cvrcd`,`cvr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=94271 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계담보보험납입예정';
