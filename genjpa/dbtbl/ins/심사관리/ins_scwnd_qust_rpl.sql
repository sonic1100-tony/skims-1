--
-- Table structure for table `ins_scwnd_qust_rpl`
--

DROP TABLE IF EXISTS `ins_scwnd_qust_rpl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_scwnd_qust_rpl` (
  `scwnd_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상병코드',
  `qust_id` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '질문ID',
  `rpl_id` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '답변ID',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `rpl_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '답변내용',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`scwnd_cd`,`qust_id`,`rpl_id`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상병질문답변';
