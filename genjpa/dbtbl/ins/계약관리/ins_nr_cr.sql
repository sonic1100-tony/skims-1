--
-- Table structure for table `ins_nr_cr`
--

DROP TABLE IF EXISTS `ins_nr_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_nr_cr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `rgtdt` date NOT NULL COMMENT '등록일자',
  `nr_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '관심유형코드',
  `nr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관심구분코드',
  `rgt_rs` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록사유',
  `cnc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해제여부',
  `cnc_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해제직원번호',
  `cncdt` date DEFAULT NULL COMMENT '해제일자',
  `cnc_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해제사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_nr_cr_00` (`plyno`,`rgtdt`,`nr_tpcd`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='관심계약';
