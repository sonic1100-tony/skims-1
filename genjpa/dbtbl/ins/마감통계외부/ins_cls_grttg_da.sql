--
-- Table structure for table `ins_cls_grttg_da`
--

DROP TABLE IF EXISTS `ins_cls_grttg_da`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cls_grttg_da` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymd` date NOT NULL COMMENT '마감년월일',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `amt_1` decimal(15,0) DEFAULT NULL COMMENT '금액1',
  `amt_2` decimal(15,0) DEFAULT NULL COMMENT '금액2',
  `cls_grttg_flgcd` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '마감대사구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_cls_grttg_da_00` (`cls_yymd`,`plyno`,`cls_grttg_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='마감대사자료';
