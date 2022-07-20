--
-- Table structure for table `ins_crdis_deadr_info`
--

DROP TABLE IF EXISTS `ins_crdis_deadr_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_crdis_deadr_info` (
  `rcvdt` date NOT NULL COMMENT '수신일자',
  `deadr_rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '사망자주민번호',
  `deadr_nm` varchar(150) COLLATE utf8mb4_bin NOT NULL COMMENT '사망자명',
  `dedt` date DEFAULT NULL COMMENT '사망일자',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`rcvdt`,`deadr_rsno`,`deadr_nm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='신정원사망자정보';
