--
-- Table structure for table `lse_injt_trpa_info`
--

DROP TABLE IF EXISTS `lse_injt_trpa_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_injt_trpa_info` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `injt_trpa_seqno` decimal(3,0) NOT NULL COMMENT '부당진료비순번',
  `injt_trpa_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '부당진료비유형코드',
  `ifamt` decimal(15,0) NOT NULL COMMENT '추정금액',
  `rvass_dsamt` decimal(15,0) NOT NULL COMMENT '심사평가원결정금액',
  `jrd_rvass_are` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관할심사평가원지역',
  `rvass_chrps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사평가원담당자성명',
  `rvass_cntad` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사평가원연락처',
  `rvass_dsdt` date DEFAULT NULL COMMENT '심사평가원결정일자',
  `d30_rnddt` date DEFAULT NULL COMMENT '30일경과일자',
  `o1_dmur_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차이의신청여부',
  `o1_dmur_dt` date DEFAULT NULL COMMENT '1차이의신청일자',
  `o1_dmur_rst` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차이의신청결과',
  `o2_dmur_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차이의신청여부',
  `o2_dmur_dt` date DEFAULT NULL COMMENT '2차이의신청일자',
  `o2_dmur_rst` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차이의신청결과',
  `d90_rnddt` date DEFAULT NULL COMMENT '90일경과일자',
  `judg_dm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심판청구여부',
  `judg_dm_rqdt` date DEFAULT NULL COMMENT '심판청구신청일자',
  `judg_dm_rst` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심판청구결과',
  `d180_rnddt` date DEFAULT NULL COMMENT '180일경과일자',
  `ex_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환입여부',
  `ex_impr_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환입불가사유',
  `chrps_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자기관코드',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `hspcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병원코드',
  `bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_injt_trpa_info_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`clmps_seqno`,`injt_trpa_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='부당진료비정보';
