--
-- Table structure for table `ins_pl_rkcl_cvr_mnamt`
--

DROP TABLE IF EXISTS `ins_pl_rkcl_cvr_mnamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_rkcl_cvr_mnamt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `prm_cc_rkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험료산출단계코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `lb_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배상구분코드',
  `isamt_prm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '가입금액보험료구분코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `ap_prm` decimal(17,2) NOT NULL COMMENT '적용보험료',
  `ba_prm` decimal(15,0) NOT NULL COMMENT '기본보험료',
  `isamt` decimal(17,2) NOT NULL COMMENT '가입금액',
  `ivamt_mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험가액화폐코드',
  `ivamt` decimal(17,2) NOT NULL COMMENT '보험가액',
  `ps1_vlamt` decimal(17,2) NOT NULL COMMENT '1인당가액',
  `ps1_isamt` decimal(17,2) NOT NULL COMMENT '1인당가입금액',
  `ap_xcrt` decimal(12,6) NOT NULL COMMENT '적용환율',
  `xcrt_apdt` date DEFAULT NULL COMMENT '환율적용일자',
  `xcrt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환율구분코드',
  `woncr_cv_ap_prm` decimal(15,0) NOT NULL COMMENT '원화환산적용보험료',
  `woncr_cv_isamt` decimal(15,0) NOT NULL COMMENT '원화환산가입금액',
  `usd_xcrt` decimal(12,6) NOT NULL COMMENT '미화환율',
  `usd_cv_ap_prm` decimal(17,2) NOT NULL COMMENT '미화환산적용보험료',
  `usd_cv_isamt` decimal(17,2) NOT NULL COMMENT '미화환산가입금액',
  `nds_isamt` decimal(17,2) NOT NULL COMMENT '배서가입금액',
  `nds_ba_prm` decimal(17,2) NOT NULL COMMENT '배서기본보험료',
  `nds_ap_prm` decimal(17,2) NOT NULL COMMENT '배서적용보험료',
  `nds_woncv_ap_prm` decimal(15,0) NOT NULL COMMENT '배서원화환산적용보험료',
  `nds_woncr_cv_isamt` decimal(15,0) NOT NULL COMMENT '배서원화환산가입금액',
  `nds_usd_cv_apprm` decimal(17,2) NOT NULL COMMENT '배서미화환산적용보험료',
  `mrin_unin_isamt` decimal(17,2) NOT NULL COMMENT '해운조합가입금액',
  `ad_prm` decimal(15,0) NOT NULL COMMENT '가산보험료',
  `chaf_ap_prm` decimal(15,0) NOT NULL COMMENT '변경후적용보험료',
  `chaf_woncv_apprm` decimal(15,0) NOT NULL COMMENT '변경후원화환산적용보험료',
  `agmt_aqr_rt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협정구득요율구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pl_rkcl_cvr_mnamt_00` (`plno`,`cgaf_ch_seqno`,`prm_cc_rkcd`,`cvrcd`,`cvr_seqno`,`lb_flgcd`,`isamt_prm_flgcd`,`mncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계단계별담보화폐금액';
