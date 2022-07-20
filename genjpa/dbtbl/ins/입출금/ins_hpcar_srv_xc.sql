--
-- Table structure for table `ins_hpcar_srv_xc`
--

DROP TABLE IF EXISTS `ins_hpcar_srv_xc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_hpcar_srv_xc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `hpcar_srv_inp_dthms` datetime NOT NULL COMMENT '해피카서비스입력일시',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `cr_usecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량용도코드',
  `catcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차종코드',
  `cr_yytp` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량연식',
  `nwcr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신차구분코드',
  `carno_hngl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호한글',
  `chsno_or_tmpno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차대번호/임시번호',
  `cnmcd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차명코드',
  `nrdcd` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자코드',
  `nrdps_jbcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자직업코드',
  `nrdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자명',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `rpdt` date DEFAULT NULL COMMENT '영수일자',
  `vlddt` date DEFAULT NULL COMMENT '유효일자',
  `cr_use_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량용도구분코드',
  `drv_lmit_trtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전자한정특약코드',
  `bdl_cr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일괄계약여부',
  `cmps_tr_trt_isyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유상운송특약가입여부',
  `cmps_tr_trtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유상운송특약코드',
  `pym_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입방법코드',
  `pym_ct` decimal(3,0) DEFAULT NULL COMMENT '납입횟수',
  `age_lmit_trtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연령한정특약코드',
  `dh_aregp_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급지역단기관코드',
  `dh_br_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급지점기관코드',
  `dher_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급자직원번호',
  `brkr_cd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '중개인코드',
  `udrtk_iq_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수심의결과코드',
  `xcdt` date DEFAULT NULL COMMENT '정산일자',
  `xaamt` decimal(17,2) DEFAULT NULL COMMENT '정산금액',
  `emgmv_mng_srvcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '긴급출동조치서비스코드',
  `srv_dt` date DEFAULT NULL COMMENT '서비스일자',
  `gn_co_obj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일반공동물건구분코드',
  `emeg_mvo_srv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '긴급출동서비스구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_hpcar_srv_xc_00` (`hpcar_srv_inp_dthms`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='해피카서비스정산';
