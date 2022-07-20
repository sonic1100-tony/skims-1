--
-- Table structure for table `fin_exp_aact`
--

DROP TABLE IF EXISTS `fin_exp_aact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_exp_aact` (
  `dsodt` date NOT NULL COMMENT '발의일자',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `exp_aact_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지출결의서구분코드',
  `dp_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발의기관코드',
  `dp_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발의직원번호',
  `dp_fnl_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발의최종결재직원번호',
  `dp_fnl_prvdt` date DEFAULT NULL COMMENT '발의최종결재일자',
  `dp_dcuno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발의문서번호',
  `dp_pg_id` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발의프로그램ID',
  `rcpdt` date DEFAULT NULL COMMENT '접수일자',
  `dl_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리기관코드',
  `dl_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리직원번호',
  `fnl_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종결재직원번호',
  `fnl_prvdt` date DEFAULT NULL COMMENT '최종결재일자',
  `dl_dcuno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리문서번호',
  `dl_pg_id` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리프로그램ID',
  `exp_rslt_prv_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지출결의결재상태코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `exp_rslt_rgtno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지출결의등록번호',
  `dlpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래처명',
  `bknm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행명',
  `actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호',
  `dpsnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주명',
  `titl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제목',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `smamt` decimal(15,0) DEFAULT NULL COMMENT '합계금액',
  `dldt` date DEFAULT NULL COMMENT '처리일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dsodt`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지출결의서';
