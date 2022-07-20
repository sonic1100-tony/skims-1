--
-- Table structure for table `fin_fx_ase_rdt_dp`
--

DROP TABLE IF EXISTS `fin_fx_ase_rdt_dp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_fx_ase_rdt_dp` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `cls_da_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감자료종류코드',
  `admcs_tp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '관리비유형구분코드',
  `ase_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자산유형코드',
  `dl_tp_o1_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형1차분류코드',
  `dl_tp_o2_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형2차분류코드',
  `pter_cqamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전기말취득가액',
  `pter_sramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전기말잔존가액',
  `cutnd_incrp_cqamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당기말증가분취득가액',
  `cutnd_wstqn_cqamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당기말폐기분취득가액',
  `cutnd_wstqn_sramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당기말폐기분잔존가액',
  `cutnd_sbbf_sramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당기말차감전잔존가액',
  `cutnd_rdt_dpcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당기말감가상각비',
  `cutnd_cqamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당기말취득가액',
  `cutnd_sramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당기말잔존가액',
  `cm_rdt_dpcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월감가상각비',
  `dp_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상각방법코드',
  `dl_seqno` decimal(5,0) DEFAULT NULL COMMENT '처리순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고정자산감가상각';
