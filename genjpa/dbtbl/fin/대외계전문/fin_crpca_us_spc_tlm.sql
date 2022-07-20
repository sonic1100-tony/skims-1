--
-- Table structure for table `fin_crpca_us_spc_tlm`
--

DROP TABLE IF EXISTS `fin_crpca_us_spc_tlm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_crpca_us_spc_tlm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `crdno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '카드번호',
  `apno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '승인번호',
  `deldt` date NOT NULL COMMENT '거래일자',
  `crpca_info_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '법인카드정보구분코드',
  `crpca_rgt_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '법인카드등록형식코드',
  `crpca_rcv_info_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '법인카드수신정보분류코드',
  `crdco_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '카드사구분코드',
  `crpca_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '법인카드종류코드',
  `stmdt` date DEFAULT NULL COMMENT '결제일자',
  `crpca_amt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인카드금액구분코드',
  `dl_woamt` decimal(15,0) DEFAULT NULL COMMENT '거래원화금액',
  `dl_fcamt` decimal(17,2) DEFAULT NULL COMMENT '거래외화금액',
  `bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자번호',
  `jngnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점명',
  `jnsno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점번호',
  `pdtnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표자명',
  `bstnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업태명',
  `imnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '종목명',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `adr1` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주소1',
  `adr2` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주소2',
  `tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화번호',
  `crpca_dmos_us_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인카드국내외사용구분코드',
  `bydt` date DEFAULT NULL COMMENT '매입일자',
  `crpca_by_brcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인카드매입점코드',
  `syamt` decimal(15,0) DEFAULT NULL COMMENT '공급가액',
  `axamt` decimal(15,0) DEFAULT NULL COMMENT '부가세액',
  `dl_hms` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래시각',
  `crpca_slp_rcpdt` date DEFAULT NULL COMMENT '법인카드전표접수일자',
  `crpca_slpno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인카드전표번호',
  `crpca_tlm_seq` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '법인카드전문회차',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_crpca_us_spc_tlm_00` (`crdno`,`apno`,`deldt`,`crpca_info_flgcd`,`crpca_rgt_tpcd`,`crpca_rcv_info_csfcd`,`crpca_tlm_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='법인카드사용내역전문';
