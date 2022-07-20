--
-- Table structure for table `lse_acrc_mdud_requ`
--

DROP TABLE IF EXISTS `lse_acrc_mdud_requ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_acrc_mdud_requ` (
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
  `dgndt` date DEFAULT NULL COMMENT '진단일자',
  `hspcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병원코드',
  `hsp_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병원등급코드',
  `trmt_sbjcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진료과목코드',
  `drnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의사명',
  `intns_licno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의사면허번호',
  `de_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사망종류코드',
  `drct_ders_de_cascd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직접사인사망원인코드',
  `de_cas_et_rs` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사망원인기타사유',
  `outs_cas_clm_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외부원인사고종류코드',
  `outs_cas_clm_knd_et_rs` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외부원인사고종류기타사유',
  `outs_cas_ntt_clmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외부원인고의사고코드',
  `lsetm_dgn_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사진단구분코드',
  `dgncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진단코드',
  `dgncd_sno` decimal(5,0) DEFAULT NULL COMMENT '진단코드일련번호',
  `md_cnst_requ_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료자문의뢰유형코드',
  `cvap_tlamt` decimal(17,2) DEFAULT NULL COMMENT '민원분쟁금액',
  `no1_md_cnst_kywd_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1번의료자문키워드명',
  `no2_md_cnst_kywd_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번의료자문키워드명',
  `no3_md_cnst_kywd_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3번의료자문키워드명',
  `rqudt` date DEFAULT NULL COMMENT '의뢰일자',
  `asrdt` date DEFAULT NULL COMMENT '회신일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_acrc_mdud_requ_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`clmps_seqno`,`clm_nv_seqno`,`mdud_flgcd`,`requ_seq`,`prg_seq`,`mdud_dtcd`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='정밀의료심사의뢰';
