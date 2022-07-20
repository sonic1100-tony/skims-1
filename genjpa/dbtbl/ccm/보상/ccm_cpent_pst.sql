--
-- Table structure for table `ccm_cpent_pst`
--

DROP TABLE IF EXISTS `ccm_cpent_pst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cpent_pst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `cpent_pst_seqno` decimal(3,0) NOT NULL COMMENT '협력업체위치순번',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ctm_x_cdnvl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객X좌표값',
  `ctm_y_cdnvl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객Y좌표값',
  `pst_srv_grtn_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위치서비스인사말내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cpent_pst_00` (`ctmno`,`cprt_entp_seqno`,`cpent_pst_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='협력업체위치';
