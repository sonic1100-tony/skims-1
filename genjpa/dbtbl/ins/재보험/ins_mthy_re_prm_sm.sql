--
-- Table structure for table `ins_mthy_re_prm_sm`
--

DROP TABLE IF EXISTS `ins_mthy_re_prm_sm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_mthy_re_prm_sm` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `cr_clm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약사고구분코드',
  `riamt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험금액구분코드',
  `crano` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '계약번호',
  `gd_cvr_re_flgcd` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '상품담보출재구분코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `rert` decimal(12,6) DEFAULT NULL COMMENT '출재율',
  `rn_pend_amt` decimal(15,0) DEFAULT NULL COMMENT '원수미결금액',
  `re_pend_amt` decimal(17,6) DEFAULT NULL COMMENT '출재미결금액',
  `totno` decimal(7,0) DEFAULT NULL COMMENT '집계번호',
  `xcno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산번호',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`cr_clm_flgcd`,`riamt_flgcd`,`crano`,`gd_cvr_re_flgcd`,`gdcd`,`cvrcd`),
  KEY `idx_ins_mthy_re_prm_sm_10` (`crano`),
  KEY `idx_ins_mthy_re_prm_sm_11` (`totno`),
  KEY `idx_ins_mthy_re_prm_sm_12` (`xcno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='월별출재보험료합계';
