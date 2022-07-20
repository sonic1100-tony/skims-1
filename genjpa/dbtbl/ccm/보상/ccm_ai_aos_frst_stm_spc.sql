--
-- Table structure for table `ccm_ai_aos_frst_stm_spc`
--

DROP TABLE IF EXISTS `ccm_ai_aos_frst_stm_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_ai_aos_frst_stm_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `frst_stm_seq` decimal(3,0) NOT NULL COMMENT '선견적회차',
  `rltm_rcv_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '실시간수신여부',
  `frst_stm_ts_seqno` decimal(3,0) NOT NULL COMMENT '선견적전송순번',
  `frst_stm_spc_seqno` decimal(3,0) NOT NULL COMMENT '선견적내역순번',
  `aos_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'AOS담보코드',
  `frst_stm_seqno` decimal(3,0) NOT NULL COMMENT '선견적순번',
  `aos_mn_wrk_itcd` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'AOS주작업항목코드',
  `aos_sub_wrk_itcd` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'AOS부작업항목코드',
  `aos_accd` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'AOS부품코드',
  `aos_acnm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'AOS부품명',
  `dm_stm_wrk_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청구견적작업구분코드',
  `wag_ac_cotg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공임부품도장구분코드',
  `dm_wrk_hms_num` decimal(15,5) DEFAULT NULL COMMENT '청구작업시간수',
  `dm_ac_unprc` decimal(15,0) DEFAULT NULL COMMENT '청구부품단가',
  `dm_acsam` decimal(15,0) DEFAULT NULL COMMENT '청구부품금액',
  `dm_wag_amt` decimal(15,0) DEFAULT NULL COMMENT '청구공임금액',
  `dm_cotg_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청구도장종류코드',
  `dm_cotg_xc_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청구도장할증종류코드',
  `dm_pls_xc_amt` decimal(15,0) DEFAULT NULL COMMENT '청구폴리싱할증금액',
  `dm_grdtn_xc_amt` decimal(15,0) DEFAULT NULL COMMENT '청구보카시할증금액',
  `dm_twtn_xc_amt` decimal(15,0) DEFAULT NULL COMMENT '청구투톤할증금액',
  `ordr_ordr` decimal(5,0) DEFAULT NULL COMMENT '정렬순서',
  `ai_modl_rpair_clss_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인공지능모델수리클래스코드',
  `ai_modl_rpair_clss_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인공지능모델수리클래스명',
  `ai_dmgnj_clss_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인공지능손상클래스코드',
  `ai_dmgnj_clss_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인공지능손상클래스명',
  `ai_modl_dmgnj_pstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인공지능모델손상위치코드',
  `ai_modl_dmgnj_are` decimal(7,0) DEFAULT NULL COMMENT '인공지능모델손상면적',
  `ai_modl_dmgnj_accd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인공지능모델손상부품코드',
  `ai_modl_dmgnj_ac_cdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인공지능모델손상부품코드명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_ai_aos_frst_stm_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`frst_stm_seq`,`rltm_rcv_yn`,`frst_stm_ts_seqno`,`frst_stm_spc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='AIAOS선견적내역';
