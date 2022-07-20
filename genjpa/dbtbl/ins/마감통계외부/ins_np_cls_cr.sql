--
-- Table structure for table `ins_np_cls_cr`
--

DROP TABLE IF EXISTS `ins_np_cls_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_np_cls_cr` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `apldt` date DEFAULT NULL COMMENT '청약일자',
  `crrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자명',
  `pfbnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수익자명',
  `bz_prm` decimal(15,0) DEFAULT NULL COMMENT '영업보험료',
  `cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약상태코드',
  `py_cr_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급발생유형코드',
  `py_prdt` date DEFAULT NULL COMMENT '지급예정일자',
  `rtamt` decimal(17,2) DEFAULT NULL COMMENT '환급금액',
  `rnd_ntamt` decimal(15,0) DEFAULT NULL COMMENT '경과이자금액',
  `wdrc_act_rgt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출금계좌등록여부',
  `rm_fail_rs` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송금실패사유',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`plyno`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='미지급월별계약';
