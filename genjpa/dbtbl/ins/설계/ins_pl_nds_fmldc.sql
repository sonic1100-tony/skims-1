--
-- Table structure for table `ins_pl_nds_fmldc`
--

DROP TABLE IF EXISTS `ins_pl_nds_fmldc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_nds_fmldc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `fmlz_dcu_seqno` decimal(5,0) NOT NULL COMMENT '구비서류순번',
  `fmlz_dcu_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구비서류구분코드',
  `nds_rq_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서신청방법코드',
  `nds_fmlz_dcu_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배서구비서류코드',
  `fmldc_bj_relnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구비서류대상관계자명',
  `fmldc_bj_relpc_cn` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구비서류대상관계자내용',
  `fmldc_bj_relpc_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구비서류대상관계자고객번호',
  `fmldc_need_rs` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구비서류필요사유',
  `fmldc_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구비서류명',
  `fmldc_xpnm_no_list` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구비서류설명번호리스트',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_pl_nds_fmldc_00` (`plno`,`cgaf_ch_seqno`,`fmlz_dcu_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=443 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계배서구비서류';
