--
-- Table structure for table `ins_rins_dcu_cnn_bsns`
--

DROP TABLE IF EXISTS `ins_rins_dcu_cnn_bsns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rins_dcu_cnn_bsns` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rins_dcu_no` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험문서번호',
  `dcu_cnn_bsncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '문서관련업무코드',
  `dcu_cnn_bsnno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '문서관련업무번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_rins_dcu_cnn_bsns_00` (`rins_dcu_no`,`dcu_cnn_bsncd`,`dcu_cnn_bsnno`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보험문서관련업무';
