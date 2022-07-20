--
-- Table structure for table `fin_bdl_tf_dl_spc`
--

DROP TABLE IF EXISTS `fin_bdl_tf_dl_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bdl_tf_dl_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `bdl_tf_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일괄이체업무구분코드',
  `bdl_tf_dl_seqno` decimal(5,0) NOT NULL COMMENT '일괄이체처리순번',
  `pydt` date DEFAULT NULL COMMENT '지급일자',
  `tct` decimal(10,0) NOT NULL COMMENT '총건수',
  `smamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '합계금액',
  `cr_slpdt` date DEFAULT NULL COMMENT '발생전표일자',
  `cr_slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발생전표번호',
  `rm_slpdt` date DEFAULT NULL COMMENT '반제전표일자',
  `rm_slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반제전표번호',
  `ap_reqdt` date DEFAULT NULL COMMENT '승인요청일자',
  `ap_rq_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인요청기관코드',
  `ap_rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인요청직원번호',
  `cls_da_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마감자료종류코드',
  `crd_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드회사코드',
  `stmdy_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결제일코드',
  `dl_seqno` decimal(5,0) DEFAULT NULL COMMENT '처리순번',
  `prm_dc_dldt` date DEFAULT NULL COMMENT '보험료공제처리일자',
  `prm_dc_slpdt` date DEFAULT NULL COMMENT '보험료공제전표일자',
  `prm_dc_slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험료공제전표번호',
  `ln_dc_dldt` date DEFAULT NULL COMMENT '대출공제처리일자',
  `ln_dc_slpdt` date DEFAULT NULL COMMENT '대출공제전표일자',
  `ln_dc_slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대출공제전표번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_bdl_tf_dl_spc_00` (`st_yymm`,`bdl_tf_bsns_flgcd`,`bdl_tf_dl_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일괄이체처리내역';
