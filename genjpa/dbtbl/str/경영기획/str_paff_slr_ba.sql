--
-- Table structure for table `str_paff_slr_ba`
--

DROP TABLE IF EXISTS `str_paff_slr_ba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_paff_slr_ba` (
  `bj_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '대상년월',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `eqty_dv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '균등배분구분코드',
  `pydt` date DEFAULT NULL COMMENT '지급일자',
  `slr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '급여구분코드',
  `stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원번호',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계정과목코드',
  `clpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직급코드',
  `orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관코드',
  `pyamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '지급금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bj_yymm`,`cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='인사급여기초';
