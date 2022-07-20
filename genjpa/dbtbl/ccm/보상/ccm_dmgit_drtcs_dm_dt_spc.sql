--
-- Table structure for table `ccm_dmgit_drtcs_dm_dt_spc`
--

DROP TABLE IF EXISTS `ccm_dmgit_drtcs_dm_dt_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_dmgit_drtcs_dm_dt_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `drtcs_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '간접비구분코드',
  `drt_dm_spc_seqno` decimal(3,0) NOT NULL COMMENT '간접손해내역순번',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `lend_cr_us_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '대여자동차사용여부',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `lend_dt` date DEFAULT NULL COMMENT '대여일자',
  `lend_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대여시간',
  `rtn_pr_dt` date DEFAULT NULL COMMENT '반납예정일자',
  `rtn_pr_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반납예정시간',
  `cntad_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연락처구분코드',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화일련번호',
  `lend_carnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대여차명',
  `lend_carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대여차량번호',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) DEFAULT NULL COMMENT '협력업체순번',
  `rpair_xp_days` decimal(3,0) DEFAULT NULL COMMENT '수리예상일수',
  `trfx_coat_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '교통비상의여부',
  `py_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급계좌번호',
  `py_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급은행코드',
  `rltn_cpent_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연계협력업체구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_dmgit_drtcs_dm_dt_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`drtcs_flgcd`,`drt_dm_spc_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='피해물간접손해세부내역';
