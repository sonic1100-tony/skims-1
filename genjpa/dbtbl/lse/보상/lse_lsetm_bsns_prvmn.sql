--
-- Table structure for table `lse_lsetm_bsns_prvmn`
--

DROP TABLE IF EXISTS `lse_lsetm_bsns_prvmn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_lsetm_bsns_prvmn` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `prv_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '결재업무구분코드',
  `prv_bsns_flg_dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '결재업무구분세부코드',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `prv_bsns_flg_seqno` decimal(3,0) NOT NULL COMMENT '결재업무구분순번',
  `chr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당기관코드',
  `prv_xcpt_strdt` date DEFAULT NULL COMMENT '결재제외시작일자',
  `prv_xcpt_nddt` date DEFAULT NULL COMMENT '결재제외종료일자',
  `dlalz_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '근태유형코드',
  `hdof_tmnd_ap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '본사팀장승인여부',
  `prv_xcpt_rs` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재제외사유',
  `as_rq_dthms` datetime DEFAULT NULL COMMENT '배정요청일시',
  `crtdd_dv_accm_ct` decimal(3,0) DEFAULT NULL COMMENT '당일배당누계건수',
  `ud_bj_str_amt` decimal(17,2) DEFAULT NULL COMMENT '심사대상시작금액',
  `ud_bj_nd_amt` decimal(17,2) DEFAULT NULL COMMENT '심사대상종료금액',
  `dv_lmict` decimal(7,0) DEFAULT NULL COMMENT '배당제한건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_lsetm_bsns_prvmn_00` (`prv_bsns_flgcd`,`prv_bsns_flg_dtcd`,`stfno`,`prv_bsns_flg_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손사업무결재자';
