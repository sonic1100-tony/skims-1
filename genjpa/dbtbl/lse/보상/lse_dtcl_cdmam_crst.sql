--
-- Table structure for table `lse_dtcl_cdmam_crst`
--

DROP TABLE IF EXISTS `lse_dtcl_cdmam_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_dtcl_cdmam_crst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `dmamt_st_yymd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '손해액기준년월일',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `py_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '지급보험금액',
  `ptrm_xiamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전기추산보험금액',
  `pndct` decimal(9,0) NOT NULL DEFAULT '0' COMMENT '미결건수',
  `remn_xi_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '잔여추산금액',
  `rcpct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '접수건수',
  `rcp_cclct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '접수취소건수',
  `info_inp_ct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '정보입력건수',
  `info_inp_crct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '정보입력발생건수',
  `info_inp_pndct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '정보입력미결건수',
  `ncuct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '미적립건수',
  `ncu_xiamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '미적립추산금액',
  `nw_xict` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '신규추산건수',
  `nw_xi_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '신규추산금액',
  `cr_dm_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '발생손해액',
  `ibnf_mdamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '보험금조정금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_dtcl_cdmam_crst_00` (`dmamt_st_yymd`,`ikd_grpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일자별발생손해액현황';
