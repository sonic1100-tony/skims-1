--
-- Table structure for table `ins_pl_condt_mnamt`
--

DROP TABLE IF EXISTS `ins_pl_condt_mnamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_condt_mnamt` (
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '발행후변경순번',
  `ptccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '참여사코드',
  `isamt_prm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '가입금액보험료구분코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '적용보험료',
  `isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '가입금액',
  `ap_xcrt` decimal(12,6) NOT NULL DEFAULT '1.000000' COMMENT '적용환율',
  `xcrt_apdt` date DEFAULT NULL COMMENT '환율적용일자',
  `xcrt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환율구분코드',
  `woncr_cv_ap_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산적용보험료',
  `woncr_cv_isamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산가입금액',
  `usd_xcrt` decimal(12,6) NOT NULL DEFAULT '1.000000' COMMENT '미화환율',
  `usd_cv_ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '미화환산적용보험료',
  `usd_cv_isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '미화환산가입금액',
  `nds_isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '배서가입금액',
  `nds_ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '배서적용보험료',
  `nds_woncv_ap_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '배서원화환산적용보험료',
  `nds_woncr_cv_isamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '배서원화환산가입금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`plno`,`cgaf_ch_seqno`,`ptccd`,`isamt_prm_flgcd`,`mncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계공동인수화폐금액';
