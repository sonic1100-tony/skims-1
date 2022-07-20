--
-- Table structure for table `ins_pl_cvr_mn_asamt`
--

DROP TABLE IF EXISTS `ins_pl_cvr_mn_asamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_cvr_mn_asamt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `lb_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배상구분코드',
  `isamt_prm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '가입금액보험료구분코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `gvmt_asamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '정부보조금액',
  `gvmt_nds_asamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '정부배서보조금액',
  `gvmt_asamt_rt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '정부보조금액비율',
  `gvmt_nds_asamt_rt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '정부배서보조금액비율',
  `sd_asamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '시도보조금액',
  `sd_nds_asamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '시도배서보조금액',
  `sd_asamt_rt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '시도보조금액비율',
  `sd_nds_asamt_rt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '시도배서보조금액비율',
  `sgng_asamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '시군구보조금액',
  `sgng_nds_asamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '시군구배서보조금액',
  `sgng_asamt_rt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '시군구보조금액비율',
  `sgng_nds_asamt_rt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '시군구배서보조금액비율',
  `crt_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '계약자보험료',
  `crt_prm_rt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '계약자보험료비율',
  `crt_nds_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '계약자배서보험료',
  `crt_nds_prm_rt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '계약자배서보험료비율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pl_cvr_mn_asamt_00` (`plno`,`cgaf_ch_seqno`,`cvrcd`,`cvr_seqno`,`lb_flgcd`,`isamt_prm_flgcd`,`mncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계담보화폐보조금액';
