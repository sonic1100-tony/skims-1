--
-- Table structure for table `ccm_pln_mvo_dmge_stt`
--

DROP TABLE IF EXISTS `ccm_pln_mvo_dmge_stt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_pln_mvo_dmge_stt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `pln_mvo_seqno` decimal(3,0) NOT NULL COMMENT '현장출동순번',
  `dmge_stt_seqno` decimal(3,0) NOT NULL COMMENT '피해상황순번',
  `dmge_stt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해상황구분코드',
  `victm_gd_nm` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자물명',
  `hsp_mntn_fctnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병원정비공장명',
  `carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호',
  `carnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차명',
  `owrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소유자명',
  `dmge_ownr_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해소유자전화지역번호',
  `dmge_ownr_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해소유자전화국번',
  `dmge_ownr_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해소유자전화일련번호',
  `cr_is_inscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량가입보험사코드',
  `rlt_cr_rcpno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상대차량접수번호',
  `cr_chrps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량담당자명',
  `cr_chrps_tl_areno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량담당자전화지역번호',
  `cr_chrps_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량담당자전화국번',
  `cr_chrps_tl_sno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량담당자전화일련번호',
  `blkbx_bag_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '블랙박스장착여부',
  `pln_mvo_ag_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '현장출동합의구분코드',
  `rnt_car_us_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '렌트카사용여부',
  `rnt_car_entnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '렌트카업체명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_pln_mvo_dmge_stt_00` (`rcp_yymm`,`rcp_nv_seqno`,`pln_mvo_seqno`,`dmge_stt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='현장출동피해상황';
