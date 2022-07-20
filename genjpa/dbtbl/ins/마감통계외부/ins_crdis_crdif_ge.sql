--
-- Table structure for table `ins_crdis_crdif_ge`
--

DROP TABLE IF EXISTS `ins_crdis_crdif_ge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_crdis_crdif_ge` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tlm_opndt` date NOT NULL COMMENT '전문개시일자',
  `tlm_admno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '전문관리번호',
  `tlm_ts_seqno` decimal(5,0) NOT NULL COMMENT '전문전송순번',
  `bygn_hist_ntc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기왕력고지여부',
  `mpyam_smamt` decimal(15,0) DEFAULT NULL COMMENT '월납보험료합계금액',
  `udrtk_ud_prg_ct` decimal(5,0) DEFAULT NULL COMMENT '인수심사진행건수',
  `nw_crcc_ct` decimal(5,0) DEFAULT NULL COMMENT '신규계약체결건수',
  `mn_crct` decimal(5,0) DEFAULT NULL COMMENT '유지계약건수',
  `lap_crct` decimal(5,0) DEFAULT NULL COMMENT '실효계약건수',
  `cn_cr_ct` decimal(7,0) DEFAULT NULL COMMENT '해지계약건수',
  `ce_trste_rgt_ct` decimal(5,0) DEFAULT NULL COMMENT '모집수탁자등록건수',
  `clmct` decimal(7,0) DEFAULT NULL COMMENT '사고건수',
  `m6wi_clm_crct` decimal(5,0) DEFAULT NULL COMMENT '6개월이내사고발생건수',
  `aprh_clm_ct` decimal(7,0) DEFAULT NULL COMMENT '근접사고건수',
  `hlion_aprh_clmct` decimal(5,0) DEFAULT NULL COMMENT '홀인원근접사고건수',
  `albt_aprh_clmct` decimal(5,0) DEFAULT NULL COMMENT '알바트로스근접사고건수',
  `py_ct` decimal(9,0) DEFAULT NULL COMMENT '지급건수',
  `same_clm_a3cp_pyct` decimal(5,0) DEFAULT NULL COMMENT '동일사고3개사이상지급건수',
  `same_clm_a5cp_pyct` decimal(5,0) DEFAULT NULL COMMENT '동일사고5개사이상지급건수',
  `same_clm_a10cp_pyct` decimal(5,0) DEFAULT NULL COMMENT '동일사고10개사이상지급건수',
  `sub_pyct` decimal(5,0) DEFAULT NULL COMMENT '부지급건수',
  `imu_ct` decimal(9,0) DEFAULT NULL COMMENT '면책건수',
  `pyamt` decimal(17,2) DEFAULT NULL COMMENT '지급금액',
  `hsp_days` decimal(5,0) DEFAULT NULL COMMENT '입원일수',
  `hsp_ct` decimal(7,0) DEFAULT NULL COMMENT '입원건수',
  `a60d_lhsp_ct` decimal(5,0) DEFAULT NULL COMMENT '60일이상장기입원횟수',
  `otp_ct` decimal(7,0) DEFAULT NULL COMMENT '통원건수',
  `dgn_ct` decimal(7,0) DEFAULT NULL COMMENT '진단건수',
  `obs_ct` decimal(5,0) DEFAULT NULL COMMENT '장해건수',
  `op_ct` decimal(7,0) DEFAULT NULL COMMENT '수술건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_crdis_crdif_ge_00` (`tlm_opndt`,`tlm_admno`,`tlm_ts_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='신용정보원신용정보일반';
