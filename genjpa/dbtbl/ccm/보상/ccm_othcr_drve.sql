--
-- Table structure for table `ccm_othcr_drve`
--

DROP TABLE IF EXISTS `ccm_othcr_drve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_othcr_drve` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `drve_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '운전구분코드',
  `carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호',
  `is_inscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입보험사코드',
  `owrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소유자명',
  `cr_ownr_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량소유자고객번호',
  `cr_ownr_drv_relcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '차량소유자운전자관계코드',
  `ownr_hp_areno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소유자휴대폰지역번호',
  `ownr_hp_tno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소유자휴대폰국번',
  `ownr_hp_sno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소유자휴대폰일련번호',
  `ownr_hous_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소유자집전화지역번호',
  `ownr_hous_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소유자집전화국번',
  `ownr_hous_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소유자집전화일련번호',
  `carnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차명',
  `trt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특약구분코드',
  `othcr_trt_imu_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타차특약면책유형코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_othcr_drve_00` (`rcp_yymm`,`rcp_nv_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='타차운전';
