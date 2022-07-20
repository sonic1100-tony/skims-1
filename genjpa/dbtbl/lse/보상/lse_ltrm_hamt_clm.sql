--
-- Table structure for table `lse_ltrm_hamt_clm`
--

DROP TABLE IF EXISTS `lse_ltrm_hamt_clm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ltrm_hamt_clm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `ch_seqno` decimal(5,0) NOT NULL COMMENT '변경순번',
  `no1_rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1번접수년월',
  `no1_rcpnv_seqno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1번접수조사순번',
  `no2_rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번접수년월',
  `no2_rcpnv_seqno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번접수조사순번',
  `no3_rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3번접수년월',
  `no3_rcpnv_seqno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3번접수조사순번',
  `no4_rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '4번접수년월',
  `no4_rcpnv_seqno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '4번접수조사순번',
  `rpt_rk_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보고단계구분코드',
  `clm_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고유형코드',
  `clm_cascd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고원인코드',
  `clm_dthms` datetime DEFAULT NULL COMMENT '사고일시',
  `clm_plc` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고장소',
  `clm_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고내용',
  `rcpdt` date DEFAULT NULL COMMENT '접수일자',
  `ad_rcpdt` date DEFAULT NULL COMMENT '추가접수일자',
  `dgndt` date DEFAULT NULL COMMENT '진단일자',
  `hspnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병원명',
  `lsetm_dlg_entp_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사위임업체고객번호',
  `nv_rqudt` date DEFAULT NULL COMMENT '조사의뢰일자',
  `ot_insnm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타보험사명',
  `ot_lfins_cmpnm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타생명보험회사명',
  `dmrt` decimal(5,2) DEFAULT NULL COMMENT '청구율',
  `pyrt` decimal(5,2) DEFAULT NULL COMMENT '지급율',
  `emamt` decimal(15,0) DEFAULT NULL COMMENT '청구금액',
  `xp_py_ibamt` decimal(15,0) DEFAULT NULL COMMENT '예상지급보험금액',
  `dm_rde_amt` decimal(17,2) DEFAULT NULL COMMENT '손해절감금액',
  `prvdt` date DEFAULT NULL COMMENT '결재일자',
  `cmp_prvmn_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상결재자ID',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_ltrm_hamt_clm_00` (`rcp_yymm`,`rcp_nv_seqno`,`ch_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장기고액사고';
