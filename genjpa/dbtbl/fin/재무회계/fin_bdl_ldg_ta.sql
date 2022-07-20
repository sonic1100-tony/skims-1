--
-- Table structure for table `fin_bdl_ldg_ta`
--

DROP TABLE IF EXISTS `fin_bdl_ldg_ta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bdl_ldg_ta` (
  `ta_stdt` date NOT NULL COMMENT '이관기준일자',
  `ta_seqno` decimal(10,0) NOT NULL COMMENT '이관순번',
  `ta_apdt` date NOT NULL COMMENT '이관적용일자',
  `ldg_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '원장종류코드',
  `ldgno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '원장번호',
  `bf_ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '전계정과목코드',
  `bfact_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '전회계기관코드',
  `bfdh_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '전취급기관코드',
  `bfdh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전취급직원번호',
  `af_ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '후계정과목코드',
  `afact_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '후회계기관코드',
  `afdh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '후취급기관코드',
  `afdh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '후취급직원번호',
  `ta_rs` varchar(2000) COLLATE utf8mb4_bin NOT NULL COMMENT '이관사유',
  `ap_rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인요청직원번호',
  `ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인직원번호',
  `ldg_ta_prv_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원장이관결재상태코드',
  `ap_rq_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인요청기관코드',
  `ap_reqdt` date DEFAULT NULL COMMENT '승인요청일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ta_stdt`,`ta_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일괄원장이관';
