--
-- Table structure for table `fin_dm_sy_txaf_rpr`
--

DROP TABLE IF EXISTS `fin_dm_sy_txaf_rpr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_dm_sy_txaf_rpr` (
  `rpr_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '신고년월',
  `spc_sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '내역일련번호',
  `dm_sy_conm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손해사정인상호명',
  `dm_sy_bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손해사정인사업자번호',
  `dm_sy_pdtnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손해사정인대표자명',
  `dm_sy_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손해사정인주민번호',
  `pydt` date DEFAULT NULL COMMENT '지급일자',
  `cvr_imnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보종목명',
  `nrdps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자성명',
  `victm_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자성명',
  `seamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '사정가액',
  `py_cm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '지급수수료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rpr_yymm`,`spc_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손해사정인세무신고';
