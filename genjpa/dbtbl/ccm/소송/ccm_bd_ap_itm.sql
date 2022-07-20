--
-- Table structure for table `ccm_bd_ap_itm`
--

DROP TABLE IF EXISTS `ccm_bd_ap_itm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_bd_ap_itm` (
  `lw_prg_sno` decimal(10,0) NOT NULL COMMENT '소송진행일련번호',
  `bd_ap_sbjcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신체감정과목코드',
  `ap_drnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감정의사명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`lw_prg_sno`,`bd_ap_sbjcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='신체감정과목';
