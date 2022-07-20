--
-- Table structure for table `fin_exp_aact_dt`
--

DROP TABLE IF EXISTS `fin_exp_aact_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_exp_aact_dt` (
  `dsodt` date NOT NULL COMMENT '발의일자',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `sno_seqno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호순번',
  `dbcr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '차대구분코드',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `ntacc_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계정과목명',
  `org_brcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관지점코드',
  `brnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지점명',
  `dlplc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래처구분코드',
  `dlpno` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래처번호',
  `dlpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래처명',
  `nots` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dsodt`,`sno`,`sno_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지출결의서상세';
