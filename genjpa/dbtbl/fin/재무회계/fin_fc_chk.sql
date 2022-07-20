--
-- Table structure for table `fin_fc_chk`
--

DROP TABLE IF EXISTS `fin_fc_chk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_fc_chk` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `fc_chk_admno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '외화수표관리번호',
  `chk_rcdt` date NOT NULL COMMENT '수표수령일자',
  `chk_rc_seqno` decimal(3,0) NOT NULL COMMENT '수표수령순번',
  `ss_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발행은행코드',
  `ssdt` date DEFAULT NULL COMMENT '발행일자',
  `fc_chk_rlbno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '외화수표실물번호',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `fcamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화금액',
  `woamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화금액',
  `ap_xcrt` decimal(12,6) NOT NULL DEFAULT '1.000000' COMMENT '적용환율',
  `chr_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '담당기관코드',
  `chr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당직원번호',
  `rc_ap_rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수령승인요청직원번호',
  `rc_ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수령승인직원번호',
  `stmdt` date DEFAULT NULL COMMENT '결제일자',
  `stm_ap_rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결제승인요청직원번호',
  `stm_ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결제승인직원번호',
  `stamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '결제금액',
  `stm_cm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '결제수수료',
  `dlno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래번호',
  `stm_slpdt` date DEFAULT NULL COMMENT '결제전표일자',
  `stm_slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결제전표번호',
  `stm_slp_lnno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결제전표라인번호',
  `acc_ldgno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계정원장번호',
  `fc_chk_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '외화수표상태코드',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_fc_chk_00` (`fc_chk_admno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='외화수표';
