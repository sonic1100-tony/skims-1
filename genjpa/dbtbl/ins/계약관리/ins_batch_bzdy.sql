--
-- Table structure for table `ins_batch_bzdy`
--

DROP TABLE IF EXISTS `ins_batch_bzdy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_batch_bzdy` (
  `bzdy_adm_dt` date NOT NULL COMMENT '영업일관리일자',
  `bzdy_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '영업일유형코드',
  `bzdy_adm_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영업일관리명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bzdy_adm_dt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='배치영업일';
