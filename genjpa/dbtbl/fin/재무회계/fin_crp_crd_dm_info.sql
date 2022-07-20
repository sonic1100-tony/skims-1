--
-- Table structure for table `fin_crp_crd_dm_info`
--

DROP TABLE IF EXISTS `fin_crp_crd_dm_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_crp_crd_dm_info` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `dm_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '청구년월',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `crd_apdt` date DEFAULT NULL COMMENT '카드승인일자',
  `crdno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드번호',
  `crd_apno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드승인번호',
  `ap_seqno` decimal(5,0) DEFAULT NULL COMMENT '승인순번',
  `nml_ccl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT '01' COMMENT '정상취소구분코드',
  `stmdt` date DEFAULT NULL COMMENT '결제일자',
  `stamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '결제금액',
  `cnf_crdno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '확인카드번호',
  `crd_cmpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '카드회사코드',
  `apamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '승인금액',
  `jnsno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점번호',
  `jngnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점명',
  `jns_tot_adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점전체주소',
  `jns_tlno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점전화번호',
  `jns_bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점사업자번호',
  `crd_ap_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드승인시간',
  `syamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '공급가액',
  `axamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '부가세액',
  `svcg` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '봉사료',
  `andus` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '연회비',
  `arrs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '연체료',
  `etamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기타금액',
  `ovse_us_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '해외사용여부',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `mcc_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'MCC코드',
  `mcc_cdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'MCC코드명',
  `jns_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점우편번호',
  `jns_pdtnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점대표자명',
  `sl_no` varchar(35) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '매출번호',
  `ccl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '취소여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_crp_crd_dm_info_00` (`dm_yymm`,`dm_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='법인카드청구정보';
