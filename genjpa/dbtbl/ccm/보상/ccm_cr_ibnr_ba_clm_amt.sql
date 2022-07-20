--
-- Table structure for table `ccm_cr_ibnr_ba_clm_amt`
--

DROP TABLE IF EXISTS `ccm_cr_ibnr_ba_clm_amt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cr_ibnr_ba_clm_amt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `clm_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '사고년월',
  `ibnr_cr_cvr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR자동차담보구분코드',
  `inj_rnk` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '부상급수',
  `rpbl_ds_ibamt` decimal(17,2) DEFAULT NULL COMMENT '책임결정보험금액',
  `optn_ds_ibamt` decimal(17,2) DEFAULT NULL COMMENT '임의결정보험금액',
  `dsamt_sm` decimal(15,0) DEFAULT NULL COMMENT '결정금액합계',
  `rpbl_xi_ibamt` decimal(17,2) DEFAULT NULL COMMENT '책임추산보험금액',
  `optn_xiamt` decimal(17,2) DEFAULT NULL COMMENT '임의추산보험금액',
  `remn_xiamt_sm` decimal(17,2) DEFAULT NULL COMMENT '잔여추산보험금액합계',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cr_ibnr_ba_clm_amt_00` (`cls_yymm`,`clm_yymm`,`ibnr_cr_cvr_flgcd`,`inj_rnk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차IBNR기초사고금액';
