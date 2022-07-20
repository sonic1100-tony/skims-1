--
-- Table structure for table `com_cus_info_mskdl_auadm`
--

DROP TABLE IF EXISTS `com_cus_info_mskdl_auadm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_cus_info_mskdl_auadm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `scr_id` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '화면ID',
  `msk_auth_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마스크권한구분코드',
  `msk_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마스크유형코드',
  `msk_auth_vl` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '마스크권한값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_com_cus_info_mskdl_auadm_00` (`scr_id`,`msk_auth_flgcd`,`msk_tpcd`,`msk_auth_vl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객정보마스크처리권한관리';
