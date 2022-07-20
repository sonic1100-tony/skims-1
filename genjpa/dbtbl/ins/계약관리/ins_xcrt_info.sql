--
-- Table structure for table `ins_xcrt_info`
--

DROP TABLE IF EXISTS `ins_xcrt_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_xcrt_info` (
  `pbcdt` date NOT NULL COMMENT '고시일자',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `ntnnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국가명',
  `tlmno_byrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '전신환매입율',
  `tlmno_slsrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '전신환매도율',
  `sal_strt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '매매기준율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`pbcdt`,`mncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='환율정보';
