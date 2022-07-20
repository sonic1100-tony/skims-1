--
-- Table structure for table `gea_prts_rq_itm`
--

DROP TABLE IF EXISTS `gea_prts_rq_itm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_prts_rq_itm` (
  `rqno` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '신청번호',
  `itmcd` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '품목코드',
  `rqdt` date NOT NULL COMMENT '신청일자',
  `rqor_cd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '신청기관코드',
  `rq_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '신청직원번호',
  `cm_ltrm_gnte_nwcct` decimal(10,0) DEFAULT NULL COMMENT '당월장기보장성신계약건수',
  `bm01_ltrm_gnte_nwcct` decimal(10,0) DEFAULT NULL COMMENT '1개월전장기보장성신계약건수',
  `bm02_ltrm_gnte_nwcct` decimal(10,0) DEFAULT NULL COMMENT '2개월전장기보장성신계약건수',
  `bm03_ltrm_gnte_nwcct` decimal(10,0) DEFAULT NULL COMMENT '3개월전장기보장성신계약건수',
  `prts_stock_qant` decimal(10,0) DEFAULT NULL COMMENT '인쇄물재고수량',
  `cm_mxpsb_rq_qant` decimal(7,0) DEFAULT NULL COMMENT '당월최대가능신청수량',
  `cm_bdl_dstb_qant` decimal(7,0) DEFAULT NULL COMMENT '당월일괄배부수량',
  `cm_acm_rq_qant` decimal(7,0) DEFAULT NULL COMMENT '당월누적신청수량',
  `cm_inpps_rq_qant` decimal(7,0) DEFAULT NULL COMMENT '당월입력가능신청수량',
  `supt_rq_qant` decimal(7,0) NOT NULL COMMENT '지원신청수량',
  `spls_rq_rs` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '초과신청사유',
  `supt_dcn_qant` decimal(7,0) NOT NULL COMMENT '지원확정수량',
  `md_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조정사유',
  `prts_rq_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '인쇄물신청상태코드',
  `invc_no` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송장번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rqno`,`itmcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='인쇄물신청품목';
