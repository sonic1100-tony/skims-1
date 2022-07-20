--
-- Table structure for table `str_rtprg_adm`
--

DROP TABLE IF EXISTS `str_rtprg_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_rtprg_adm` (
  `cy_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT 'CY년월',
  `week` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '요일',
  `bz_plcd` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '사업계획코드',
  `form_seq` decimal(3,0) NOT NULL COMMENT '양식회차',
  `bz_pl_itcd` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '사업계획항목코드',
  `bz_pl_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '사업계획기관코드',
  `bz_pl_ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업계획보험종목코드',
  `as_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '배정기관코드',
  `trm_untcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기간단위코드',
  `cy_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT 'CY년도',
  `thwk_if_avamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '금주추정실적금액',
  `cm_if_avamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월추정실적금액',
  `rq_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '신청직원번호',
  `rq_apdt` date DEFAULT NULL COMMENT '신청승인일자',
  `rq_ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청승인직원번호',
  `apdt` date DEFAULT NULL COMMENT '승인일자',
  `ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인직원번호',
  `fnl_apdt` date DEFAULT NULL COMMENT '최종승인일자',
  `fnl_ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종승인직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cy_yymm`,`week`,`bz_plcd`,`form_seq`,`bz_pl_itcd`,`bz_pl_orgcd`,`bz_pl_ins_imcd`,`as_orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='진도관리';
