--
-- Table structure for table `fin_fc_rm_bj_ldg`
--

DROP TABLE IF EXISTS `fin_fc_rm_bj_ldg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_fc_rm_bj_ldg` (
  `rm_rqno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '송금신청번호',
  `fc_rm_bj_seqno` decimal(5,0) NOT NULL COMMENT '외화송금대상순번',
  `ldgno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '원장번호',
  `ldg_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '원장종류코드',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계정과목코드',
  `crdt` date DEFAULT NULL COMMENT '발생일자',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `cr_woamt` decimal(15,0) DEFAULT NULL COMMENT '발생원화금액',
  `cr_fcamt` decimal(17,2) DEFAULT NULL COMMENT '발생외화금액',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관코드',
  `dh_stfcd` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원코드',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rm_rqno`,`fc_rm_bj_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='외화송금대상원장';
