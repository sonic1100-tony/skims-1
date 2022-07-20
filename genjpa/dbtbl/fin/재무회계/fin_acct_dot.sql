--
-- Table structure for table `fin_acct_dot`
--

DROP TABLE IF EXISTS `fin_acct_dot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_acct_dot` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stdt` date NOT NULL COMMENT '기준일자',
  `dfpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예금상대처코드',
  `bfdy_ldg_dp_ct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '전일원장입금건수',
  `bfdy_ldg_dpamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '전일원장입금금액',
  `bfdy_ldg_wdrc_ct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '전일원장출금건수',
  `bfdy_ldg_wamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '전일원장출금금액',
  `bfdy_ldg_dp_tblam` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '전일원장예금잔액',
  `bfdy_slp_dpamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '전일전표입금금액',
  `bfdy_slp_wamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '전일전표출금금액',
  `bfdy_slp_dp_tblam` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '전일전표예금잔액',
  `crtdd_ldg_dp_ct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '당일원장입금건수',
  `crtdd_ldg_dpamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '당일원장입금금액',
  `crtdd_ldg_wdrc_ct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '당일원장출금건수',
  `crtdd_ldg_wamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '당일원장출금금액',
  `crtdd_ldg_dp_tblam` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '당일원장예금잔액',
  `crtdd_slp_dpamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '당일전표입금금액',
  `crtdd_slp_wamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '당일전표출금금액',
  `crtdd_slp_dp_tblam` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '당일전표예금잔액',
  `crnt_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '현재잔액',
  `cls_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마감여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_acct_dot_00` (`stdt`,`dfpcd`)
) ENGINE=InnoDB AUTO_INCREMENT=663 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='통장일계';
