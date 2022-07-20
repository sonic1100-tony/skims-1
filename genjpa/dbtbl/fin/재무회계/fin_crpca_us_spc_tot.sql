--
-- Table structure for table `fin_crpca_us_spc_tot`
--

DROP TABLE IF EXISTS `fin_crpca_us_spc_tot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_crpca_us_spc_tot` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `crd_apdt` date NOT NULL COMMENT '카드승인일자',
  `crdno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '카드번호',
  `crd_apno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '카드승인번호',
  `nml_ccl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '정상취소구분코드',
  `crd_ap_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드승인시간',
  `crd_apamt` decimal(15,0) DEFAULT NULL COMMENT '카드승인금액',
  `crd_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드회사코드',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `jngnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점명',
  `ccl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취소여부',
  `us_usecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용용도코드',
  `slpdt` date DEFAULT NULL COMMENT '전표일자',
  `slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표번호',
  `pydt` date DEFAULT NULL COMMENT '지급일자',
  `us_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용사유',
  `syamt` decimal(15,0) DEFAULT NULL COMMENT '공급가액',
  `axamt` decimal(15,0) DEFAULT NULL COMMENT '부가세액',
  `svcg` decimal(15,0) DEFAULT NULL COMMENT '봉사료',
  `ovse_us_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해외사용여부',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `mcc_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'MCC코드',
  `mcc_cdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'MCC코드명',
  `jnsno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점번호',
  `jns_bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점사업자번호',
  `jns_pdtnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점대표자명',
  `jns_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점우편번호',
  `jns_tot_adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점전체주소',
  `jns_tlno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점전화번호',
  `evdno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증빙번호',
  `dh_br_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급지점기관코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_crpca_us_spc_tot_00` (`crd_apdt`,`crdno`,`crd_apno`,`nml_ccl_flgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=397 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='법인카드사용내역집계';
