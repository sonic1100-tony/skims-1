--
-- Table structure for table `fin_tblam_list`
--

DROP TABLE IF EXISTS `fin_tblam_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_tblam_list` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `da_seqno` decimal(7,0) NOT NULL COMMENT '자료순번',
  `stdt` date NOT NULL COMMENT '기준일자',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `fndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '펀드코드',
  `ppdt` date NOT NULL COMMENT '계상일자',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `fc_poamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화계상금액',
  `fc_tblam` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화잔액',
  `woncr_poamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화계상금액',
  `woncr_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화잔액',
  `ap_xcrt` decimal(12,6) NOT NULL DEFAULT '1.000000' COMMENT '적용환율',
  `fnl_rmdt` date DEFAULT NULL COMMENT '최종반제일자',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `dl_tp_o1_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래유형1차분류코드',
  `dl_tp_o2_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래유형2차분류코드',
  `dltfp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상대처구분코드',
  `dltcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상대처코드',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `bsns_cnnno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무관련번호구분코드',
  `bsns_cnnno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무관련번호',
  `act_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회계기관코드',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `ldg_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '원장종류코드',
  `ldgno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '원장번호',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`,`st_yymm`),
  UNIQUE KEY `pux_fin_tblam_list_00` (`st_yymm`,`da_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=295657 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='잔액명세'
