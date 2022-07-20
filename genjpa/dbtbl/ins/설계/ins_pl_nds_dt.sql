--
-- Table structure for table `ins_pl_nds_dt`
--

DROP TABLE IF EXISTS `ins_pl_nds_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_nds_dt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '발행후변경순번',
  `nds_dt_seqno` decimal(5,0) NOT NULL COMMENT '배서상세순번',
  `atrcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '속성코드',
  `chbvl` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전값',
  `chavl` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후값',
  `nds_dt_itnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서상세항목명',
  `nds_note` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서비고',
  `scr_idc_gp` decimal(5,0) DEFAULT NULL COMMENT '화면표시그룹',
  `oj_or_relpc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '목적물/관계자구분코드',
  `ppr_seqno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위순번',
  `sbd_seqno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '하위순번',
  `dt_seqno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세순번',
  `chbf_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전코드',
  `chaf_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후코드',
  `bj_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대상식별번호',
  `bjnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대상명',
  `dlflg_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리구분코드',
  `nds_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서유형코드',
  `ndscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서코드',
  `da_ch_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자료변경여부',
  `it_out_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '항목출력여부',
  `wrdg_chbvl` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'WORDING변경전값',
  `wrdg_chavl` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'WORDING변경후값',
  `out_idc_gpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출력표시그룹번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pl_nds_dt_00` (`plno`,`cgaf_ch_seqno`,`nds_dt_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=1303 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계배서상세';
