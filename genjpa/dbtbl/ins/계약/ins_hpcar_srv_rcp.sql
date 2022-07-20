--
-- Table structure for table `ins_hpcar_srv_rcp`
--

DROP TABLE IF EXISTS `ins_hpcar_srv_rcp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_hpcar_srv_rcp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `hpcar_srv_inp_dthms` datetime NOT NULL COMMENT '해피카서비스입력일시',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `carno_hngl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호한글',
  `carnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차명',
  `cr_yytp` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량연식',
  `nrdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자명',
  `nrdps_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자전화지역번호',
  `nrdps_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자전화국번',
  `nrdps_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자전화일련번호',
  `emeg_mvo_of_srvcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '긴급출동제공서비스코드',
  `mvo_are_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출동지역우편번호',
  `mvo_are_et_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출동지역기타주소',
  `dmd_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자전화지역번호',
  `dmd_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자전화국번',
  `dmd_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자전화일련번호',
  `dmdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자명',
  `emgmv_hmsg_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '긴급출동도움말내용',
  `emgmv_us_ct` decimal(3,0) DEFAULT NULL COMMENT '긴급출동사용건수',
  `emgmv_tot_ct` decimal(3,0) DEFAULT NULL COMMENT '긴급출동전체건수',
  `emgmv_cpono_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '긴급출동유무상구분코드',
  `lock_cnc_srv_us_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '잠금해제서비스사용여부',
  `inp_aregp_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입력지역단기관코드',
  `inp_br_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입력지점기관코드',
  `emeg_mvo_rcpno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '긴급출동접수번호',
  `emgmv_tlm_ercd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '긴급출동전문오류코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_hpcar_srv_rcp_00` (`hpcar_srv_inp_dthms`,`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='해피카서비스접수';
