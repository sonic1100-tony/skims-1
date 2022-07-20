--
-- Table structure for table `ins_dmcy_ibnf_mmcls`
--

DROP TABLE IF EXISTS `ins_dmcy_ibnf_mmcls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dmcy_ibnf_mmcls` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약상태코드',
  `ctm_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객유형코드',
  `tz_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가압류여부',
  `py_lmit_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급제한여부',
  `dmcy_amt_flgcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴면금액구분코드',
  `crdt` date DEFAULT NULL COMMENT '발생일자',
  `pydt` date DEFAULT NULL COMMENT '지급일자',
  `rtamt` decimal(17,2) DEFAULT NULL COMMENT '환급금액',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`plyno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='휴면보험금월마감';
