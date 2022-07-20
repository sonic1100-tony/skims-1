--
-- Table structure for table `lse_sum_obsrt_md_cnst`
--

DROP TABLE IF EXISTS `lse_sum_obsrt_md_cnst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_sum_obsrt_md_cnst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `obs_ch_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '장해변경구분코드',
  `obs_itcd` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '장해항목코드',
  `ud_seq` decimal(3,0) NOT NULL COMMENT '심사회차',
  `sum_obsrt` decimal(5,2) NOT NULL COMMENT '합산장해율',
  `o1_cnst_hspcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차자문병원코드',
  `o1_cnst_hspnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차자문병원명',
  `o1_cnsdr_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차자문의명',
  `o1_cnst_ch_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차자문변경여부',
  `o1_cnst_ch_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차자문변경내용',
  `o2_cnst_hspcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차자문병원코드',
  `o2_cnst_hspnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차자문병원명',
  `o2_cnsdr_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차자문의명',
  `o2_cnst_ch_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차자문변경여부',
  `o2_cnst_ch_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차자문변경내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_sum_obsrt_md_cnst_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`,`obs_ch_flgcd`,`obs_itcd`,`ud_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='합산장해율의료자문';
