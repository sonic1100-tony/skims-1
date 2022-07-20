--
-- Table structure for table `ins_fire_inorg_stf`
--

DROP TABLE IF EXISTS `ins_fire_inorg_stf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_fire_inorg_stf` (
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `adm_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리직원번호',
  `admr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리자직원번호',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `inorg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대외기관구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='화특대외기관직원';
