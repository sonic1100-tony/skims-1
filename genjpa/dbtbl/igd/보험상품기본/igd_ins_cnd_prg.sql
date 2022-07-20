--
-- Table structure for table `igd_ins_cnd_prg`
--

DROP TABLE IF EXISTS `igd_ins_cnd_prg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_ins_cnd_prg` (
  `ins_cndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험조건코드',
  `ins_cnnm` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '보험조건명',
  `ins_cnd_cn` varchar(300) COLLATE utf8mb4_bin NOT NULL COMMENT '보험조건내용',
  `ins_cnd_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험조건유형코드',
  `vald_strdt` date NOT NULL COMMENT '유효시작일자',
  `vald_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '유효종료일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ins_cndcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험조건문구';
