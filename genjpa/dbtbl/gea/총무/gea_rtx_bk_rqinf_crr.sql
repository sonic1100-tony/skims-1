--
-- Table structure for table `gea_rtx_bk_rqinf_crr`
--

DROP TABLE IF EXISTS `gea_rtx_bk_rqinf_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_rtx_bk_rqinf_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rtx_bkno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증책번호',
  `rq_crr_seqno` decimal(5,0) NOT NULL COMMENT '신청이력순번',
  `supt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지원구분코드',
  `rqdt` date NOT NULL COMMENT '신청일자',
  `rq_seqno` decimal(5,0) NOT NULL COMMENT '신청순번',
  `rq_spc_seqno` decimal(5,0) NOT NULL COMMENT '신청내역순번',
  `rc_pr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수령예정기관코드',
  `rc_cnf_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수령확인직원번호',
  `rc_cnfdt` date DEFAULT NULL COMMENT '수령확인일자',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_rtx_bk_rqinf_crr_00` (`rtx_bkno`,`rq_crr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영수증책신청정보이력';
