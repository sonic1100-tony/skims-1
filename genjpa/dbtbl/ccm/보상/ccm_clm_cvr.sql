--
-- Table structure for table `ccm_clm_cvr`
--

DROP TABLE IF EXISTS `ccm_clm_cvr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_clm_cvr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `clm_cvr_crr_seqno` decimal(3,0) NOT NULL COMMENT '사고담보이력순번',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `rcpdt` date NOT NULL COMMENT '접수일자',
  `rcp_hhmm` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '접수시분',
  `imu_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면책구분코드',
  `imu_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면책유형코드',
  `imu_dthms` datetime DEFAULT NULL COMMENT '면책일시',
  `imu_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면책직원번호',
  `imu_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면책기관코드',
  `imu_tm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면책팀기관코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_clm_cvr_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`clm_cvr_crr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고담보';
