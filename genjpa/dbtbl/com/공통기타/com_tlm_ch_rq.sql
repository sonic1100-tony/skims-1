--
-- Table structure for table `com_tlm_ch_rq`
--

DROP TABLE IF EXISTS `com_tlm_ch_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_tlm_ch_rq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tlm_admno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '전문관리번호',
  `ch_seqno` decimal(5,0) NOT NULL COMMENT '변경순번',
  `tlm_ch_rq_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '전문변경요청유형코드',
  `dmd_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요청자직원번호',
  `reqdt` date NOT NULL COMMENT '요청일자',
  `ap_hpdt` date NOT NULL COMMENT '적용희망일자',
  `tlm_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '전문명',
  `us_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '사용여부',
  `tlm_xpnm` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '전문설명',
  `sysnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '시스템명',
  `chr_bsncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '담당업무코드',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자직원번호',
  `larg_inot_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '대내외구분코드',
  `chn_or_orgnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '채널/기관명',
  `dstn_ip_adr` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '목적지IP주소',
  `trrv_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '송수신구분코드',
  `onl_batch_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '온라인배치구분코드',
  `lgsys_srv_cdnm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기간계서비스코드명',
  `lgsys_file_pst` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기간계파일위치',
  `bzpt_of_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '현업제공여부',
  `psn_info_incld_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '개인정보포함여부',
  `psinf_it` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보항목',
  `db_save_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT 'DB저장여부',
  `data_keep_cyc_xpnm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'DATA보관주기설명',
  `wrk_cyc_xpnm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '작업주기설명',
  `adx_file_dscno` decimal(8,0) DEFAULT NULL COMMENT '첨부파일식별번호',
  `intn_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대외기관코드',
  `intn_bsncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대외업무코드',
  `intn_spe_file_id` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대외종별파일ID',
  `intn_dl_id` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대외거래ID',
  `intn_tlm_id` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대외전문ID',
  `ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '삭제여부',
  `hips_prv_prgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'HIPS결재진행코드',
  `hips_prvmn_ref_mtt` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'HIPS결재자참고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_com_tlm_ch_rq_00` (`tlm_admno`,`ch_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전문변경요청';
