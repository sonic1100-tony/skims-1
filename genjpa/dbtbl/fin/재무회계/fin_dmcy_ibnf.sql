--
-- Table structure for table `fin_dmcy_ibnf`
--

DROP TABLE IF EXISTS `fin_dmcy_ibnf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_dmcy_ibnf` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `dmcy_dldt` date NOT NULL COMMENT '휴면처리일자',
  `dmcy_dl_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '휴면처리기관코드',
  `dmcy_dl_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '휴면처리직원번호',
  `slpdt` date NOT NULL COMMENT '전표일자',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표번호',
  `cls_da_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감자료종류코드',
  `dl_seqno` decimal(5,0) NOT NULL COMMENT '처리순번',
  `elec_prv_dcu_id` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전자결재문서아이디',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='휴면보험금';
