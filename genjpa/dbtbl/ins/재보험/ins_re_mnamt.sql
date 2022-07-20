--
-- Table structure for table `ins_re_mnamt`
--

DROP TABLE IF EXISTS `ins_re_mnamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_re_mnamt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `amt_cr_untno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '금액발생단위번호',
  `ptccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '참여사코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보코드',
  `amt_cr_untcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금액발생단위코드',
  `ap_xcrt` decimal(12,6) NOT NULL DEFAULT '1.000000' COMMENT '적용환율',
  `udrtk_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수형태코드',
  `reno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재번호',
  `cr_clm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약사고구분코드',
  `sign_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부호내용',
  `mngm_btpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영위업종코드',
  `lq_dotno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청산일계번호',
  `lqdt` date DEFAULT NULL COMMENT '청산일자',
  `isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '가입금액',
  `woncr_cv_isamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산가입금액',
  `nre_isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '순출재가입금액',
  `nre_woncr_cv_isamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '순출재원화환산가입금액',
  `prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '보험료',
  `woncr_cv_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산보험료',
  `nre_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '순출재보험료',
  `nre_woncr_cv_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '순출재원화환산보험료',
  `bdr_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '신배책보험료',
  `re_cm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '출재수수료',
  `woncr_cv_re_cm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산출재수수료',
  `pft_cm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '이익수수료',
  `woncr_cv_pft_cm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산이익수수료',
  `remn_xi_mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '잔여추산화폐코드',
  `remn_xi_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '잔여추산금액',
  `pyamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '지급금액',
  `woncr_cv_pyamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '원화환산지급금액',
  `ibnf_cs_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험금비용구분코드',
  `fire_prdm_prm` decimal(17,2) DEFAULT '0.00' COMMENT '화재대물보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_re_mnamt_00` (`amt_cr_untno`,`ptccd`,`mncd`)
) ENGINE=InnoDB AUTO_INCREMENT=132915 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='출재화폐금액';
