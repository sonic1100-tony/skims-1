--
-- Table structure for table `ins_rins_xc_rqamt`
--

DROP TABLE IF EXISTS `ins_rins_xc_rqamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rins_xc_rqamt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `xc_rqno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '정산의뢰번호',
  `xc_requ_mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '정산의뢰화폐코드',
  `rm_dt` date DEFAULT NULL COMMENT '송금일자',
  `xc_net_amt` decimal(17,2) NOT NULL COMMENT '정산정미금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_rins_xc_rqamt_00` (`xc_rqno`,`xc_requ_mncd`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보험정산의뢰금액';
