--
-- Table structure for table `fin_badbt_pv`
--

DROP TABLE IF EXISTS `fin_badbt_pv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_badbt_pv` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `badbt_stncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '대손기준코드',
  `gn_spc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일반특별구분코드',
  `fndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '펀드코드',
  `bfmm_pv_acamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전월충당누계금액',
  `cm_bjamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월대상금액',
  `cm_pvamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월충당금액',
  `cm_dpamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월상각금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`ntacc_cd`,`badbt_stncd`,`gn_spc_flgcd`,`fndcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='대손충당';
