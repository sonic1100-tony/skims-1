--
-- Table structure for table `cus_dherc_inr_ctm_crr`
--

DROP TABLE IF EXISTS `cus_dherc_inr_ctm_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_dherc_inr_ctm_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '고객식별번호',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `chdt` date NOT NULL COMMENT '변경일자',
  `bz_fmlcu_cr_seqno` decimal(10,0) NOT NULL COMMENT '영업가족고객발생순번',
  `gu_fire_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구화재직원번호',
  `hngl_ctmnm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글고객명',
  `iptdt` date DEFAULT NULL COMMENT '입력일자',
  `ctm_home_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객자택전화번호',
  `home_sd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자택시도',
  `home_sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자택시군구',
  `home_twmd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자택읍면동',
  `home_dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자택상세주소',
  `home_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자택우편번호',
  `ctm_wpc_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객직장전화번호',
  `wpc_sd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직장시도',
  `wpc_sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직장시군구',
  `wpc_twmd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직장읍면동',
  `wpc_dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직장상세주소',
  `wpc_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직장우편번호',
  `hndph_no` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '핸드폰번호',
  `fxno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '팩스번호',
  `mail_adr` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일주소',
  `home_ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자택참고항목',
  `home_nw_adr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자택신규주소구분코드',
  `home_road_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자택도로명',
  `home_undg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자택지하구분코드',
  `home_mn_bldno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자택주건물번호',
  `home_sub_bldno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자택부건물번호',
  `wpc_ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직장참고항목',
  `wpc_nw_adr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직장신규주소구분코드',
  `wpc_road_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직장도로명',
  `wpc_undg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직장지하구분코드',
  `wpc_mn_bldno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직장주건물번호',
  `wpc_sub_bldno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직장부건물번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_dherc_inr_ctm_crr_00` (`ctm_dscno`,`stfno`,`chdt`,`bz_fmlcu_cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='취급자별통합고객이력';
