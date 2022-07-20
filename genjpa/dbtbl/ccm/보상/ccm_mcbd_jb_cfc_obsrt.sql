--
-- Table structure for table `ccm_mcbd_jb_cfc_obsrt`
--

DROP TABLE IF EXISTS `ccm_mcbd_jb_cfc_obsrt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_mcbd_jb_cfc_obsrt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `obs_itcd` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '장해항목코드',
  `jb_cfc_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '직업계수코드',
  `obsrt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '장해율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_mcbd_jb_cfc_obsrt_00` (`obs_itcd`,`jb_cfc_cd`)
) ENGINE=InnoDB AUTO_INCREMENT=11359 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='맥브라이드직업계수장해율';
