--
-- Table structure for table `fin_bll_ldg`
--

DROP TABLE IF EXISTS `fin_bll_ldg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bll_ldg` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `bll_ldgno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '어음원장번호',
  `bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '은행코드',
  `bll_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '어음종류코드',
  `bllno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '어음번호',
  `bll_rgtdt` date NOT NULL COMMENT '어음등록일자',
  `blamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '어음금액',
  `rpdt` date DEFAULT NULL COMMENT '영수일자',
  `rpamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '영수금액',
  `act_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '회계기관코드',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '취급기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원번호',
  `bll_py_ddy` date NOT NULL COMMENT '어음지급기일',
  `py_plc` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급장소',
  `bll_ssrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '어음발행인명',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `bll_ssdt` date DEFAULT NULL COMMENT '어음발행일자',
  `bll_nt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '어음이자구분코드',
  `bll_nt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '어음이자',
  `bll_ntrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '어음이자율',
  `ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인직원번호',
  `apdt` date DEFAULT NULL COMMENT '승인일자',
  `bll_trsdt` date DEFAULT NULL COMMENT '어음수탁일자',
  `bll_rtndt` date DEFAULT NULL COMMENT '어음반환일자',
  `ppdt` date DEFAULT NULL COMMENT '계상일자',
  `dsh_bll_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '부도어음여부',
  `dshdt` date DEFAULT NULL COMMENT '부도일자',
  `dsh_doc_rcpno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부도공문접수번호',
  `dsh_ppdt` date DEFAULT NULL COMMENT '부도계상일자',
  `stmdt` date DEFAULT NULL COMMENT '결제일자',
  `rpbl_opndt` date DEFAULT NULL COMMENT '책임개시일자',
  `bll_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '어음상태코드',
  `rm_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '반제상태코드',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `bll_nt_paym_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '어음이자수취구분코드',
  `fina_dat_vrf_flg1_vl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재무데이터검증구분1값',
  `fina_dat_vrf_flg2_vl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재무데이터검증구분2값',
  `fina_dat_vrf_flg3_vl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재무데이터검증구분3값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_bll_ldg_00` (`bll_ldgno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='어음원장';
