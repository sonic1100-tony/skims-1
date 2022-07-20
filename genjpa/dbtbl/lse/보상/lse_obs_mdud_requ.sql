--
-- Table structure for table `lse_obs_mdud_requ`
--

DROP TABLE IF EXISTS `lse_obs_mdud_requ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_obs_mdud_requ` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `mdud_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료심사구분코드',
  `requ_seq` decimal(3,0) NOT NULL COMMENT '의뢰회차',
  `prg_seq` decimal(5,0) NOT NULL COMMENT '진행회차',
  `mdud_dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료심사상세코드',
  `obs_ud_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '장해심사구분코드',
  `obs_ud_rgt_seqno` decimal(5,0) NOT NULL COMMENT '장해심사등록순번',
  `obs_parcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해부위코드',
  `obs_itcd` varchar(12) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해항목코드',
  `o1_obsrt` decimal(5,2) DEFAULT NULL COMMENT '1차장해율',
  `o2_obsrt` decimal(5,2) DEFAULT NULL COMMENT '2차장해율',
  `o3_obsrt` decimal(5,2) DEFAULT NULL COMMENT '3차장해율',
  `o4_obsrt` decimal(5,2) DEFAULT NULL COMMENT '4차장해율',
  `obs_trm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해기간구분코드',
  `obs_yyct` decimal(3,0) DEFAULT NULL COMMENT '장해년수',
  `obs_pst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해위치구분코드',
  `obs_cnbd` decimal(5,2) DEFAULT NULL COMMENT '장해기여도',
  `dgndt` date DEFAULT NULL COMMENT '진단일자',
  `hspcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병원코드',
  `hsp_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병원등급코드',
  `trmt_sbjcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진료과목코드',
  `drnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의사명',
  `intns_licno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의사면허번호',
  `obs_par_dtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해부위상세코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_obs_mdud_requ_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`clmps_seqno`,`clm_nv_seqno`,`mdud_flgcd`,`requ_seq`,`prg_seq`,`mdud_dtcd`,`obs_ud_flgcd`,`obs_ud_rgt_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장해의료심사의뢰';
