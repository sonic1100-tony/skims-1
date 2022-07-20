--
-- Table structure for table `fin_dcl_it_adm`
--

DROP TABLE IF EXISTS `fin_dcl_it_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_dcl_it_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `dcl_da_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '공시자료분류코드',
  `dcl_da_csfnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시자료분류명',
  `inp_scr_id` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입력화면ID',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='공시항목관리';
