--
-- Table structure for table `ins_ud_rst`
--

DROP TABLE IF EXISTS `ins_ud_rst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ud_rst` (
  `udno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '심사번호',
  `ndv_ud_seqno` decimal(5,0) NOT NULL COMMENT '개별심사순번',
  `udlmi_tpcd` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '인수제한유형코드',
  `udlmi_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수제한내용',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`udno`,`ndv_ud_seqno`,`udlmi_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심사결과';
