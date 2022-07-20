--
-- Table structure for table `ins_acm_tpcl_udrtk_lm`
--

DROP TABLE IF EXISTS `ins_acm_tpcl_udrtk_lm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_acm_tpcl_udrtk_lm` (
  `acm_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '누적유형코드',
  `sexcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '성별코드',
  `sct_str_age` decimal(3,0) NOT NULL COMMENT '구간시작연령',
  `jbcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '직업코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `sct_nd_age` decimal(3,0) NOT NULL COMMENT '구간종료연령',
  `udrtk_lm_amt` decimal(15,0) DEFAULT NULL COMMENT '인수한도금액',
  `bscrl_lmamt` decimal(15,0) NOT NULL COMMENT '업계한도금액',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`acm_tpcd`,`sexcd`,`sct_str_age`,`jbcd`,`ap_strdt`),
  KEY `idx_ins_acm_tpcl_udrtk_lm_10` (`jbcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='누적유형별인수한도';
