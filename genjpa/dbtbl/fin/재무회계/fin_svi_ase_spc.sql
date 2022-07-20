--
-- Table structure for table `fin_svi_ase_spc`
--

DROP TABLE IF EXISTS `fin_svi_ase_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_svi_ase_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `dfpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예금상대처코드',
  `dldt` date NOT NULL COMMENT '처리일자',
  `dl_seqno` decimal(5,0) NOT NULL COMMENT '처리순번',
  `chr_dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당취급기관코드',
  `rv_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수납기관코드',
  `svi_ase_spc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '저축성자산내역구분코드',
  `frtx_nt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '비과세이자',
  `tx_nt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '과세이자',
  `ndaf_nt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '만기후이자',
  `pp_crptx_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '선급법인세액',
  `ry_pcamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '회수원금',
  `paym_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '불입금액',
  `paym_acamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '불입누계금액',
  `invst_bg` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '투자경비',
  `rl_dlamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '실처리금액',
  `yy_pfrt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '년수익율',
  `nt_cal_strdt` date DEFAULT NULL COMMENT '이자계산시작일자',
  `nt_cal_nddt` date DEFAULT NULL COMMENT '이자계산종료일자',
  `nt_days` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '이자일수',
  `paym_ct` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '불입횟수',
  `rl_dl_prdt` date DEFAULT NULL COMMENT '실처리예정일자',
  `slpdt` date DEFAULT NULL COMMENT '전표일자',
  `slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_svi_ase_spc_00` (`dfpcd`,`dldt`,`dl_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='저축성자산내역';
