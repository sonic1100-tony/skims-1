--
-- Table structure for table `ins_rins_dcu_rcv_plac`
--

DROP TABLE IF EXISTS `ins_rins_dcu_rcv_plac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rins_dcu_rcv_plac` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rins_dcu_no` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험문서번호',
  `rcv_plac_gp_seqno` decimal(5,0) NOT NULL COMMENT '수신처그룹순번',
  `brk_rinsr_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '브로커재보험자유형코드',
  `brk_rincd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '브로커재보험자코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_rins_dcu_rcv_plac_00` (`rins_dcu_no`,`rcv_plac_gp_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보험문서수신처';
