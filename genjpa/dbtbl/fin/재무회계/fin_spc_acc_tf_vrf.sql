--
-- Table structure for table `fin_spc_acc_tf_vrf`
--

DROP TABLE IF EXISTS `fin_spc_acc_tf_vrf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_spc_acc_tf_vrf` (
  `tfdt` date NOT NULL COMMENT '이체일자',
  `tf_bj_strdt` date DEFAULT NULL COMMENT '이체대상시작일자',
  `tf_bj_nddt` date DEFAULT NULL COMMENT '이체대상종료일자',
  `ac_cnfdt` date DEFAULT NULL COMMENT '경리확인일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`tfdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='특별계정이체검증';
