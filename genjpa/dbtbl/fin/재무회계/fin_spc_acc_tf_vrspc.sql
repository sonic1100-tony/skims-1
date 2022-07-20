--
-- Table structure for table `fin_spc_acc_tf_vrspc`
--

DROP TABLE IF EXISTS `fin_spc_acc_tf_vrspc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_spc_acc_tf_vrspc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tfdt` date NOT NULL COMMENT '이체일자',
  `da_seqno` decimal(7,0) NOT NULL COMMENT '자료순번',
  `spc_acc_tfo2_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특별계정이체2차분류코드',
  `fndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '펀드코드',
  `tfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이체금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_spc_acc_tf_vrspc_00` (`tfdt`,`da_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=1378 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='특별계정이체검증내역';
