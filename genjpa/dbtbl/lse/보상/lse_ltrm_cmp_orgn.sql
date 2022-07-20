--
-- Table structure for table `lse_ltrm_cmp_orgn`
--

DROP TABLE IF EXISTS `lse_ltrm_cmp_orgn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ltrm_cmp_orgn` (
  `orncd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '조직코드',
  `ltrm_cmp_orgn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '장기보상조직구분코드',
  `scr_idc_ordr` decimal(5,0) NOT NULL COMMENT '화면표시순서',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`orncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장기보상조직';
