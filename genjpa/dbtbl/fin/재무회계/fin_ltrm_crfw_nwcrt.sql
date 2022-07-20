--
-- Table structure for table `fin_ltrm_crfw_nwcrt`
--

DROP TABLE IF EXISTS `fin_ltrm_crfw_nwcrt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_ltrm_crfw_nwcrt` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `cls_da_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감자료종류코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `gn_spc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일반특별구분코드',
  `fndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '펀드코드',
  `pr_rl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예정실제구분코드',
  `chn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '채널구분코드',
  `dl_tp_o1_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형1차분류코드',
  `dl_tp_o2_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형2차분류코드',
  `bmed_nrpym_nwcrt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전월말미상각신계약비',
  `cm_crfw_nwcrt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월이연신계약비',
  `cm_accm_crfw_nwcrt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월누계이연신계약비',
  `cm_nwcrt_dpcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월신계약비상각비',
  `cm_accm_nwcrt_dpcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월누계신계약비상각비',
  `cm_nrpym_nwcrt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월미상각신계약비',
  `dl_seqno` decimal(5,0) DEFAULT NULL COMMENT '처리순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장기이연신계약비';
