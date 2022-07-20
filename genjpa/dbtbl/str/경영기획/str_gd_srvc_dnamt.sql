--
-- Table structure for table `str_gd_srvc_dnamt`
--

DROP TABLE IF EXISTS `str_gd_srvc_dnamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_gd_srvc_dnamt` (
  `dl_crano` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '거래계약번호',
  `dl_bj_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '거래대상년월',
  `xpamt` decimal(15,0) NOT NULL COMMENT '예상금액',
  `avamt` decimal(15,0) NOT NULL COMMENT '실적금액',
  `ap_rq_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인요청기관코드',
  `ap_rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인요청직원번호',
  `rq_dthms` datetime DEFAULT NULL COMMENT '요청일시',
  `ap_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인기관코드',
  `ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인직원번호',
  `ap_dthms` datetime DEFAULT NULL COMMENT '승인일시',
  `ch_ap_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경승인상태코드',
  `prv_ctn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재의견',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dl_crano`,`dl_bj_yymm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품용역거래금액';
