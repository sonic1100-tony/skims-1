--
-- Table structure for table `ins_pl_ad_info`
--

DROP TABLE IF EXISTS `ins_pl_ad_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_ad_info` (
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `hndps_rgt_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '장애인등록여부',
  `hndps_ins_strdt` date DEFAULT NULL COMMENT '장애인보험시작일자',
  `hndps_ins_nddt` date DEFAULT NULL COMMENT '장애인보험종료일자',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`plno`,`cgaf_ch_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계부가정보';
