--
-- Table structure for table `ins_ins_bn_cc_tp`
--

DROP TABLE IF EXISTS `ins_ins_bn_cc_tp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ins_bn_cc_tp` (
  `bn_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업종분류코드',
  `ins_btpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험업종코드',
  `cc_ba_tycd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '산출기초형태코드',
  `unt` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단위',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bn_csfcd`,`ins_btpcd`,`cc_ba_tycd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험업종산출유형';
