--
-- Table structure for table `fin_crd_trs_tlm`
--

DROP TABLE IF EXISTS `fin_crd_trs_tlm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_crd_trs_tlm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tlm_crno` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '전문발생번호',
  `wrtdt` date NOT NULL COMMENT '작성일자',
  `tlm_cop_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '전문구성구분코드',
  `rec_seqno` decimal(5,0) NOT NULL COMMENT '레코드순번',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `rec_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '레코드구분코드',
  `jnsno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점번호',
  `crd_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드회사코드',
  `crd_cmp_bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드회사사업자번호',
  `slstr_dt` date DEFAULT NULL COMMENT '매출시작일자',
  `slnd_dt` date DEFAULT NULL COMMENT '매출종료일자',
  `crdno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드번호',
  `vald_trm` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유효기간',
  `sl_or_ccldt` date DEFAULT NULL COMMENT '매출/취소일자',
  `crd_apno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드승인번호',
  `slamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '매출금액',
  `svcg` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '봉사료',
  `at_mnt` decimal(3,0) DEFAULT NULL COMMENT '할부개월',
  `dlno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래번호',
  `crd_ldgno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드원장번호',
  `gn_ct_sm` decimal(7,0) DEFAULT NULL COMMENT '일반건수합계',
  `gn_nlamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '일반순매출액합계',
  `gn_svcg_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '일반봉사료합계',
  `gn_slamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '일반매출액합계',
  `ccl_gn_ct_sm` decimal(7,0) DEFAULT NULL COMMENT '취소일반건수합계',
  `ccl_gn_nlamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '취소일반순매출액합계',
  `ccl_gn_svcg_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '취소일반봉사료합계',
  `ccl_gn_slamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '취소일반매출액합계',
  `at_ct_sm` decimal(7,0) DEFAULT NULL COMMENT '할부건수합계',
  `at_slamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '할부매출액합계',
  `ccl_at_ct_sm` decimal(7,0) DEFAULT NULL COMMENT '취소할부건수합계',
  `ccl_at_slamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '취소할부매출액합계',
  `vnccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'VAN사코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_crd_trs_tlm_00` (`tlm_crno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='카드송신전문';
