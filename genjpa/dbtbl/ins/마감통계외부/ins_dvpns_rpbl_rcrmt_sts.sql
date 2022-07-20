--
-- Table structure for table `ins_dvpns_rpbl_rcrmt_sts`
--

DROP TABLE IF EXISTS `ins_dvpns_rpbl_rcrmt_sts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_rpbl_rcrmt_sts` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `sts_da_flgcd` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '통계자료구분코드',
  `da_wrtdt` date NOT NULL COMMENT '자료작성일자',
  `dvpns_ins_cmpcd` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원보험회사코드',
  `dvpns_ikdcd` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원보종코드',
  `shr_amt_rt_vlcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '분담금요율값코드',
  `nw_pym_prm` decimal(17,2) DEFAULT NULL COMMENT '신규납입보험료',
  `nw_shamt` decimal(17,2) DEFAULT NULL COMMENT '신규분담금액',
  `sep_pym_prm` decimal(17,2) DEFAULT NULL COMMENT '분할납입보험료',
  `sep_shamt` decimal(17,2) DEFAULT NULL COMMENT '분할분담금액',
  `nds_pym_prm` decimal(17,2) DEFAULT NULL COMMENT '배서납입보험료',
  `nds_shamt` decimal(17,2) DEFAULT NULL COMMENT '배서분담금액',
  `cn_pym_prm` decimal(17,2) DEFAULT NULL COMMENT '해약납입보험료',
  `cn_shamt` decimal(17,2) DEFAULT NULL COMMENT '해약분담금액',
  `rvi_pym_prm` decimal(17,2) DEFAULT NULL COMMENT '부활납입보험료',
  `rvi_shamt` decimal(17,2) DEFAULT NULL COMMENT '부활분담금액',
  `cr_sb_pym_prm` decimal(17,2) DEFAULT NULL COMMENT '차량대체납입보험료',
  `cr_sb_shamt` decimal(17,2) DEFAULT NULL COMMENT '차량대체분담금액',
  `ercd_1` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류코드1',
  `ercd_2` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류코드2',
  `ercd_3` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류코드3',
  `erct` decimal(7,0) DEFAULT NULL COMMENT '오류건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_dvpns_rpbl_rcrmt_sts_00` (`sts_da_flgcd`,`da_wrtdt`,`dvpns_ins_cmpcd`,`dvpns_ikdcd`,`shr_amt_rt_vlcd`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원책임계약사항통계';
