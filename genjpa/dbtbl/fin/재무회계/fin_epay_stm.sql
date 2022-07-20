--
-- Table structure for table `fin_epay_stm`
--

DROP TABLE IF EXISTS `fin_epay_stm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_epay_stm` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `epay_stm_no` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '페이결제번호',
  `epay_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '페이구분코드',
  `epay_stm_chn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '페이결제채널구분코드',
  `jns_ord_no` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '가맹점주문번호',
  `jns_ctmno` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '가맹점고객번호',
  `gdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품명',
  `epay_dl_cpldt` date DEFAULT NULL COMMENT '페이거래완료일자',
  `epay_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '페이상태코드',
  `rpbl_opndt` date DEFAULT NULL COMMENT '책임개시일자',
  `stmdt` date DEFAULT NULL COMMENT '결제일자',
  `ccldt` date DEFAULT NULL COMMENT '취소일자',
  `xcdt` date DEFAULT NULL COMMENT '정산일자',
  `epay_peri_stm_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '페이정기결제번호',
  `epay_peri_stm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '페이정기결제여부',
  `acc_ldgno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계정원장번호',
  `epay_ccl_dl_cpldt` date DEFAULT NULL COMMENT '페이취소거래완료일자',
  `ccl_acc_ldgno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취소계정원장번호',
  `feamt` decimal(15,0) DEFAULT NULL COMMENT '수수료금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_fin_epay_stm_00` (`epay_stm_no`),
  KEY `idx_fin_epay_stm_01` (`epay_dl_cpldt`),
  KEY `idx_fin_epay_stm_02` (`epay_ccl_dl_cpldt`),
  KEY `idx_fin_epay_stm_10` (`acc_ldgno`)
) ENGINE=InnoDB AUTO_INCREMENT=3862 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='페이결제';
