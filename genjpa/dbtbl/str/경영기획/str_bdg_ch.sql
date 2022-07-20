--
-- Table structure for table `str_bdg_ch`
--

DROP TABLE IF EXISTS `str_bdg_ch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_bdg_ch` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rqdt` date NOT NULL COMMENT '신청일자',
  `rq_seqno` decimal(5,0) NOT NULL COMMENT '신청순번',
  `bdg_md_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예산조정구분코드',
  `rqor_cd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '신청기관코드',
  `rq_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '신청직원번호',
  `rq_apdt` date DEFAULT NULL COMMENT '신청승인일자',
  `rq_ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청승인직원번호',
  `apdt` date DEFAULT NULL COMMENT '승인일자',
  `ap_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인기관코드',
  `ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인직원번호',
  `fnl_apdt` date DEFAULT NULL COMMENT '최종승인일자',
  `fnl_ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종승인직원번호',
  `ccl_bj_rqdt` date DEFAULT NULL COMMENT '취소대상신청일자',
  `ccl_bj_rq_seqno` decimal(5,0) DEFAULT NULL COMMENT '취소대상신청순번',
  `ch_ap_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경승인상태코드',
  `bdg_std_notcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예산표준적요코드',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `elec_prv_dcu_id` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전자결재문서아이디',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_bdg_ch_00` (`rqdt`,`rq_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='예산변경';
