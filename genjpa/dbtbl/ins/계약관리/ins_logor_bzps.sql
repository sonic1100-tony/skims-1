--
-- Table structure for table `ins_logor_bzps`
--

DROP TABLE IF EXISTS `ins_logor_bzps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_logor_bzps` (
  `logor_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지자체유형코드',
  `logor_dscno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지자체식별번호',
  `bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자번호',
  `logor_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지자체명',
  `ppr_logor_dscno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위지자체식별번호',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`logor_tpcd`,`logor_dscno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지자체사업자';
