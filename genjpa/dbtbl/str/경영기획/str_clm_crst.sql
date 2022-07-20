--
-- Table structure for table `str_clm_crst`
--

DROP TABLE IF EXISTS `str_clm_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_clm_crst` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `rgt_seqno` decimal(3,0) NOT NULL COMMENT '등록순번',
  `cy_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT 'CY년도',
  `cst_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품의담보코드',
  `cm_clmct` decimal(7,0) NOT NULL COMMENT '당월사고건수',
  `bfmm_clmct` decimal(7,0) NOT NULL COMMENT '전월사고건수',
  `bfyy_clmct` decimal(7,0) NOT NULL COMMENT '전년사고건수',
  `cm_xi_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월추산보험금액',
  `bfmm_xiamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전월추산보험금액',
  `bfyy_xiamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전년추산보험금액',
  `cm_bct_xi_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월건당추산보험금액',
  `bfmm_bct_xiamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전월건당추산보험금액',
  `bfyy_bct_xi_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전년건당추산보험금액',
  `clm_crst_inp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고현황입력구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`rgt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고현황';
