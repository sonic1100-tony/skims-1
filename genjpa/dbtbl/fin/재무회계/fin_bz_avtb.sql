--
-- Table structure for table `fin_bz_avtb`
--

DROP TABLE IF EXISTS `fin_bz_avtb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bz_avtb` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `bz_avtb_tot_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업실적표집계구분코드',
  `ikd_grp_inq_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군조회코드',
  `ins_itm_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목분류코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `bz_avtb_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업실적표항목코드',
  `fy_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT 'FY잔액',
  `cy_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT 'CY잔액',
  `cm_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월잔액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`bz_avtb_tot_flgcd`,`ikd_grp_inq_cd`,`ins_itm_csfcd`,`ins_imcd`,`bz_avtb_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사업실적표';
