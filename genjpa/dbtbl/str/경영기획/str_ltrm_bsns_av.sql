--
-- Table structure for table `str_ltrm_bsns_av`
--

DROP TABLE IF EXISTS `str_ltrm_bsns_av`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_ltrm_bsns_av` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `incm_prm_cr_seqno` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '수입보험료발생순번',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `nwcr_ctu_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신계약계속구분코드',
  `pr_nwcrt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '예정신계약비',
  `pr_nwcrt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '예정신계약비합계',
  `cv_av` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '환산실적',
  `cv_av_rt` decimal(20,14) NOT NULL DEFAULT '0.00000000000000' COMMENT '환산실적비율',
  `dv_rt` decimal(20,14) NOT NULL DEFAULT '0.00000000000000' COMMENT '배분비율',
  `bzcs_dvamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '사업비배분금액합계',
  `crfw_bjamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이연대상금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장기업무실적'
