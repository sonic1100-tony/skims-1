--
-- Table structure for table `fin_crpca_outs_rcv_da`
--

DROP TABLE IF EXISTS `fin_crpca_outs_rcv_da`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_crpca_outs_rcv_da` (
  `dldt` date NOT NULL COMMENT '처리일자',
  `dl_seqno` decimal(5,0) NOT NULL COMMENT '처리순번',
  `rcv_da_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수신자료유형코드',
  `dl_rst_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리결과유형코드',
  `dl_rst_er_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리결과오류유형코드',
  `dl_rst_ercd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리결과오류코드',
  `dl_rst_er_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리결과오류내용',
  `crd_apdt` date DEFAULT NULL COMMENT '카드승인일자',
  `crdno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드번호',
  `crd_apno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드승인번호',
  `nml_ccl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정상취소구분코드',
  `crd_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드회사코드',
  `apamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '승인금액',
  `jnsno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점번호',
  `jngnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점명',
  `jns_tot_adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점전체주소',
  `jns_tlno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점전화번호',
  `jns_bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점사업자번호',
  `ccldt` date DEFAULT NULL COMMENT '취소일자',
  `crd_ap_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드승인시간',
  `syamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '공급가액',
  `axamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '부가세액',
  `svcg` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '봉사료',
  `andus` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '연회비',
  `arrs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '연체료',
  `etamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기타금액',
  `ovse_us_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해외사용여부',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `mcc_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'MCC코드',
  `mcc_cdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'MCC코드명',
  `jns_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점우편번호',
  `jns_pdtnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가맹점대표자명',
  `sl_no` varchar(35) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '매출번호',
  `stmdt` date DEFAULT NULL COMMENT '결제일자',
  `stamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '결제금액',
  `dm_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청구년월',
  `dm_seqno` decimal(5,0) DEFAULT NULL COMMENT '청구순번',
  `cnf_crdno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확인카드번호',
  `ccl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취소여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dldt`,`dl_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='법인카드외부수신자료';
