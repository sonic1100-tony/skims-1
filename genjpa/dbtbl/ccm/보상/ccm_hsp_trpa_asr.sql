--
-- Table structure for table `ccm_hsp_trpa_asr`
--

DROP TABLE IF EXISTS `ccm_hsp_trpa_asr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_hsp_trpa_asr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `asr_ordr` decimal(3,0) NOT NULL COMMENT '회신순차',
  `hsp_orgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '병원기관코드',
  `opn_requ_seq` decimal(3,0) NOT NULL COMMENT '소견의뢰회차',
  `asr_form_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '회신서식구분코드',
  `opn_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소견구분코드',
  `main_dgn_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주요진단내용',
  `pt_crnt_st` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환자현재상태',
  `hsp_need_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입원필요사유',
  `ad_hsp_need_days` decimal(3,0) DEFAULT NULL COMMENT '추가입원필요일수',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `phchr_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주치의성명',
  `sndr_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송자성명',
  `snddt` date DEFAULT NULL COMMENT '발송일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_hsp_trpa_asr_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`asr_ordr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='입원진료비회신';
