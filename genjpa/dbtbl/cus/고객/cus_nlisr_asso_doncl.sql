--
-- Table structure for table `cus_nlisr_asso_doncl`
--

DROP TABLE IF EXISTS `cus_nlisr_asso_doncl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_nlisr_asso_doncl` (
  `da_rcvdt` date NOT NULL COMMENT '자료수신일자',
  `doncl_rcv_sno` decimal(7,0) NOT NULL COMMENT '두낫콜수신일련번호',
  `doncl_hpno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '두낫콜휴대폰번호',
  `tlano` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '전화국번',
  `str_tlsno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '시작전화일련번호',
  `doncl_fn_cmp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '두낫콜금융회사구분코드',
  `doncl_fn_cmpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '두낫콜금융회사명',
  `doncl_rq_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '두낫콜신청구분코드',
  `doncl_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '두낫콜대상구분코드',
  `doncl_rqdt` date DEFAULT NULL COMMENT '두낫콜신청일자',
  `doncl_rq_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '두낫콜신청시간',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`da_rcvdt`,`doncl_rcv_sno`,`doncl_hpno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손보협회두낫콜';
