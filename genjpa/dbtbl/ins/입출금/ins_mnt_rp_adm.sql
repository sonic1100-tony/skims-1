--
-- Table structure for table `ins_mnt_rp_adm`
--

DROP TABLE IF EXISTS `ins_mnt_rp_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_mnt_rp_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rp_admno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '영수관리번호',
  `mntcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '금종코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `rpamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '영수금액',
  `cv_rpamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '환산영수금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_mnt_rp_adm_00` (`rp_admno`,`mntcd`,`mncd`)
) ENGINE=InnoDB AUTO_INCREMENT=26279 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='금종영수관리';
