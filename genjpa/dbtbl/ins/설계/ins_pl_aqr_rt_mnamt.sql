--
-- Table structure for table `ins_pl_aqr_rt_mnamt`
--

DROP TABLE IF EXISTS `ins_pl_aqr_rt_mnamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_aqr_rt_mnamt` (
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '발행후변경순번',
  `aqr_rt_seqno` decimal(5,0) NOT NULL COMMENT '구득요율순번',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '적용보험료',
  `ap_xcrt` decimal(12,6) NOT NULL DEFAULT '1.000000' COMMENT '적용환율',
  `xcrt_apdt` date DEFAULT NULL COMMENT '환율적용일자',
  `woncr_cv_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산보험료',
  `rins_cmrt` decimal(12,6) DEFAULT NULL COMMENT '재보험수수료율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`plno`,`cgaf_ch_seqno`,`aqr_rt_seqno`,`mncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계구득요율화폐금액';
