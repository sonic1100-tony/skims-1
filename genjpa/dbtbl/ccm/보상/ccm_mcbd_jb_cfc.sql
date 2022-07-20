--
-- Table structure for table `ccm_mcbd_jb_cfc`
--

DROP TABLE IF EXISTS `ccm_mcbd_jb_cfc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_mcbd_jb_cfc` (
  `mcbd_jbcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '맥브라이드직업코드',
  `bd_parcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신체부위코드',
  `jb_cfc_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '직업계수코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`mcbd_jbcd`,`bd_parcd`,`jb_cfc_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='맥브라이드직업계수';
