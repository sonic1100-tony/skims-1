--
-- Table structure for table `ins_gn_ins_cvr_clg`
--

DROP TABLE IF EXISTS `ins_gn_ins_cvr_clg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_gn_ins_cvr_clg` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `cls_bjno` varchar(40) COLLATE utf8mb4_bin NOT NULL COMMENT '마감대상번호',
  `cls_da_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감자료구분코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `udrtk_tycd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '인수형태코드',
  `mgcmp_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간사사코드',
  `thcp_qtrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '당사지분율',
  `avg_rert` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '평균출재율',
  `dp_dt_cascd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금세부원인코드',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `ce_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집기관코드',
  `ce_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집직원번호',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `chr_adm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당관리기관코드',
  `chr_admr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당관리자직원번호',
  `t_isamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '총가입금액',
  `thcp_isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '당사가입금액',
  `t_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '총보험료',
  `thcp_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '당사보험료',
  `t_cn_rtamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '총해약환급금',
  `thcp_cn_rtamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당사해약환급금',
  `cm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '수수료',
  `pft_cm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '이익수수료',
  `t_nelp_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '총미경과보험료',
  `thcp_nelp_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당사미경과보험료',
  `t_rnd_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '총경과보험료',
  `thcp_rnd_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당사경과보험료',
  `rk_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '위험보험료',
  `rk_nelp_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '위험미경과보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`cls_bjno`,`cls_da_flgcd`,`cvrcd`,`cvr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일반보험담보결산'
