--
-- Table structure for table `fin_dy_fd_rq`
--

DROP TABLE IF EXISTS `fin_dy_fd_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_dy_fd_rq` (
  `reqdt` date NOT NULL COMMENT '요청일자',
  `rqog_cd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '요청기관코드',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `fn_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금융기관코드',
  `actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호',
  `crtdd_rmamt` decimal(15,0) DEFAULT NULL COMMENT '당일송금액',
  `rqamt` decimal(15,0) DEFAULT NULL COMMENT '신청금액',
  `tblam` decimal(18,3) DEFAULT NULL COMMENT '잔액',
  `ap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인여부',
  `apamt_sm` decimal(15,0) DEFAULT NULL COMMENT '승인금액합계',
  `hdof_dpamt` decimal(15,0) DEFAULT NULL COMMENT '본사입금액',
  `crtdd_xcamt` decimal(15,0) DEFAULT NULL COMMENT '당일집행금액',
  `xc_af_tblam` decimal(15,0) DEFAULT NULL COMMENT '집행후잔액',
  `pydt` date DEFAULT NULL COMMENT '지급일자',
  `py_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급기관코드',
  `dy_fd_py_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일자금지급구분코드',
  `pyno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급번호',
  `py_act_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급회계기관코드',
  `py_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급직원번호',
  `dy_fd_py_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일자금지급형태코드',
  `py_dldt` date DEFAULT NULL COMMENT '지급처리일자',
  `rm_dt` date DEFAULT NULL COMMENT '송금일자',
  `anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답코드',
  `rm_dl_dthms` datetime DEFAULT NULL COMMENT '송금처리일시',
  `ap_dldt` date DEFAULT NULL COMMENT '승인처리일자',
  `rqfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청직원번호',
  `ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인직원번호',
  `prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재직원번호',
  `prvdt` date DEFAULT NULL COMMENT '결재일자',
  `cr_slpdt` date DEFAULT NULL COMMENT '발생전표일자',
  `cr_slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발생전표번호',
  `dl_slpdt` date DEFAULT NULL COMMENT '처리전표일자',
  `dl_slpno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리전표번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`reqdt`,`rqog_cd`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일자금요청';
