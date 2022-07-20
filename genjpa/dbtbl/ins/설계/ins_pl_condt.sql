--
-- Table structure for table `ins_pl_condt`
--

DROP TABLE IF EXISTS `ins_pl_condt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_condt` (
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '발행후변경순번',
  `ptccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '참여사코드',
  `mgcmp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간사회사여부',
  `qtrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '지분율',
  `prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '보험료',
  `isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '가입금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`plno`,`cgaf_ch_seqno`,`ptccd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계공동인수';
