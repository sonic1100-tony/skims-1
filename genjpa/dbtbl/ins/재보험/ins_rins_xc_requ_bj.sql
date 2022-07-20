--
-- Table structure for table `ins_rins_xc_requ_bj`
--

DROP TABLE IF EXISTS `ins_rins_xc_requ_bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rins_xc_requ_bj` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `xc_rqno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '정산의뢰번호',
  `xc_bjno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '정산대상번호',
  `lq_dotno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '청산일계번호',
  `xc_net_amt` decimal(17,2) NOT NULL COMMENT '정산정미금액',
  `xc_mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '정산화폐코드',
  `woncv_xc_net_amt` decimal(15,0) NOT NULL COMMENT '원화환산정산정미금액',
  `part_xc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부분정산여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_rins_xc_requ_bj_00` (`xc_rqno`,`xc_bjno`,`lq_dotno`),
  KEY `idx_ins_rins_xc_requ_bj_10` (`lq_dotno`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보험정산의뢰대상';
