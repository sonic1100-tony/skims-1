--
-- Table structure for table `ccm_injr_grd`
--

DROP TABLE IF EXISTS `ccm_injr_grd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_injr_grd` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `optdc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '임의확정구분코드',
  `injr_grd_seqno` decimal(3,0) NOT NULL COMMENT '상해등급순번',
  `cc_st_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '산출기준구분코드',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `drnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의사명',
  `intns_licno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의사면허번호',
  `inj_rnk` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '부상급수',
  `inj_it` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '부상항목',
  `dgndt` date DEFAULT NULL COMMENT '진단일자',
  `dgn_wkdy_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진단주일구분코드',
  `dgn_wkdy` decimal(6,0) NOT NULL DEFAULT '0' COMMENT '진단주일',
  `tth_rnk` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '치아급수',
  `tth_it` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '치아항목',
  `tth_ct` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '치아갯수',
  `fsmde_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '초진여부',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) DEFAULT NULL COMMENT '협력업체순번',
  `dgn_dt_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진단세부내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_injr_grd_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`optdc_flgcd`,`injr_grd_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상해등급';
