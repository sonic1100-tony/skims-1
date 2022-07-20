--
-- Table structure for table `ccm_cidps_otcm_rcp_crst`
--

DROP TABLE IF EXISTS `ccm_cidps_otcm_rcp_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cidps_otcm_rcp_crst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `idm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수년월',
  `idm_rcp_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수일련번호',
  `cidps_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피구상자서열',
  `crr_seqno` decimal(5,0) NOT NULL COMMENT '이력순번',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `otcm_clm_rcpno_list` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '타사사고접수번호리스트',
  `otcm_idm_tmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타사구상팀명',
  `otcm_idm_chrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타사구상담당자명',
  `hpno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대폰번호',
  `tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화번호',
  `fxno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '팩스번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cidps_otcm_rcp_crst_00` (`idm_rcp_yymm`,`idm_rcp_sno`,`cidps_rank`,`crr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='피구상자타사접수현황';
