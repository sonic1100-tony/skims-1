--
-- Table structure for table `ins_acpt_rj_ccl_bj`
--

DROP TABLE IF EXISTS `ins_acpt_rj_ccl_bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_acpt_rj_ccl_bj` (
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `py_rs_mdccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지급사유중분류코드',
  `rs_rgt_cncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사유등록내용코드',
  `stdt` date NOT NULL COMMENT '기준일자',
  `br_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지점기관코드',
  `pyno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급번호',
  `bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행코드',
  `actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호',
  `dpsnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주명',
  `dpsr_rs_bzmno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주주민사업자번호',
  `ccl_bj_dl_seqno` decimal(5,0) DEFAULT NULL COMMENT '취소대상처리순번',
  `bj_xcpt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대상제외여부',
  `ntclt_ss_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내장발행대상여부',
  `ntclt_ssdt` date DEFAULT NULL COMMENT '안내장발행일자',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `usrno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용인번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`plyno`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='승낙거절취소대상';
