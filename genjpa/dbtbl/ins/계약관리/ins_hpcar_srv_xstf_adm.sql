--
-- Table structure for table `ins_hpcar_srv_xstf_adm`
--

DROP TABLE IF EXISTS `ins_hpcar_srv_xstf_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_hpcar_srv_xstf_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `hpcar_srv_inp_dthms` datetime NOT NULL COMMENT '해피카서비스입력일시',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `srv_dt` date DEFAULT NULL COMMENT '서비스일자',
  `emeg_mvo_rcpno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '긴급출동접수번호',
  `nrdcd` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자코드',
  `dmdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자명',
  `gpc_xstf_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '그룹사임직원관계코드',
  `gpc_xstf_ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '그룹사임직원고객명',
  `gpcnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '그룹사명',
  `gpc_xstf_ptnnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '그룹사임직원직위명',
  `rq_emgmv_srvcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청긴급출동서비스코드',
  `rcpdt` date DEFAULT NULL COMMENT '접수일자',
  `dl_emgmv_srvcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리긴급출동서비스코드',
  `mvo_cpldt` date DEFAULT NULL COMMENT '출동완료일자',
  `mvo_cplt_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출동완료시간',
  `emgmv_srv_mntr_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '긴급출동서비스모니터링결과코드',
  `emgmv_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '긴급출동주소',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_hpcar_srv_xstf_adm_00` (`hpcar_srv_inp_dthms`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='해피카서비스임직원관리';
