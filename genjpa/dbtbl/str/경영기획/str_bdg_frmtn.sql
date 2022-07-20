--
-- Table structure for table `str_bdg_frmtn`
--

DROP TABLE IF EXISTS `str_bdg_frmtn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_bdg_frmtn` (
  `cy_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT 'CY년도',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `bdg_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '예산기관코드',
  `bdg_frmtn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예산편성구분코드',
  `rqor_cd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '신청기관코드',
  `ch_seqno` decimal(5,0) NOT NULL COMMENT '변경순번',
  `chdt` date NOT NULL COMMENT '변경일자',
  `rq_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '신청직원번호',
  `m1_ramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '1월요구금액',
  `m2_ramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '2월요구금액',
  `m3_ramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '3월요구금액',
  `m4_ramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '4월요구금액',
  `m5_ramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '5월요구금액',
  `m6_ramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '6월요구금액',
  `m7_ramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '7월요구금액',
  `m8_ramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '8월요구금액',
  `m9_ramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '9월요구금액',
  `m10_ramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '10월요구금액',
  `m11_ramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '11월요구금액',
  `m12_ramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '12월요구금액',
  `m10_xc_xpamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '10월집행예상금액',
  `m11_xc_xpamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '11월집행예상금액',
  `m12_xc_xpamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '12월집행예상금액',
  `rq_apdt` date DEFAULT NULL COMMENT '신청승인일자',
  `rq_ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청승인직원번호',
  `mddt` date DEFAULT NULL COMMENT '조정일자',
  `md_rqamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '조정요청금액',
  `md_rq_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조정요청기관코드',
  `md_rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조정요청직원번호',
  `md_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조정사유',
  `bdg_frmtn_apamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '예산편성승인금액',
  `apdt` date DEFAULT NULL COMMENT '승인일자',
  `ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인직원번호',
  `fnl_apdt` date DEFAULT NULL COMMENT '최종승인일자',
  `fnl_ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종승인직원번호',
  `fnl_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '최종여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cy_yr`,`ntacc_cd`,`bdg_orgcd`,`bdg_frmtn_flgcd`,`rqor_cd`,`ch_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='예산편성';
