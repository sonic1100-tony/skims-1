--
-- Table structure for table `ccm_trbl_iq_victm_gd`
--

DROP TABLE IF EXISTS `ccm_trbl_iq_victm_gd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_trbl_iq_victm_gd` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `trbl_iq_rcpno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '분쟁심의접수번호',
  `victm_gd_seqno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '피해자물순번',
  `trbl_iq_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분쟁심의담보코드',
  `dmge_flgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해구분명',
  `victm_gd_nm` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자물명',
  `py_ibamt` decimal(15,0) DEFAULT NULL COMMENT '지급보험금액',
  `ch_stdt` date DEFAULT NULL COMMENT '변경기준일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_trbl_iq_victm_gd_00` (`trbl_iq_rcpno`,`victm_gd_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='분쟁심의피해자물';
