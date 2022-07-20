--
-- Table structure for table `ins_rir_lq_ba_da`
--

DROP TABLE IF EXISTS `ins_rir_lq_ba_da`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rir_lq_ba_da` (
  `xc_cmp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '정산회사구분코드',
  `xc_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '정산대상구분코드',
  `pvl_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '계상년월',
  `rir_lq_sno` decimal(7,0) NOT NULL COMMENT '재보청산일련번호',
  `rinsc_lq_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보사청산년월',
  `re_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재구분코드',
  `trt_nocd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특약번호코드',
  `trt_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특약년월',
  `dltcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상대처코드',
  `rir_oiccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보원보사코드',
  `ptccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참여사코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `rins_gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험상품코드',
  `rk_tpcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위험유형코드',
  `re_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재유형코드',
  `crrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자명',
  `cr_objnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약물건명',
  `re_dlno` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재처리번호',
  `mgcmp_plyno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간사사증권번호',
  `otcm_plyno` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타사증권번호',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `rertr_prm` decimal(17,2) DEFAULT '0.00' COMMENT '출수재보험료',
  `cmear_re_cm` decimal(17,2) DEFAULT '0.00' COMMENT '출수재수수료',
  `rertr_rtmny` decimal(17,2) DEFAULT '0.00' COMMENT '출수재유보금',
  `fc_net_prm` decimal(17,2) DEFAULT '0.00' COMMENT '외화정미보험료',
  `xc_mpp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산매핑여부',
  `xc_mpp_ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산매핑삭제여부',
  `ac_tf_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '경리이체구분코드',
  `lq_dotno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청산일계번호',
  `rertr_lq_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출수재청산여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`xc_cmp_flgcd`,`xc_bj_flgcd`,`pvl_yymm`,`rir_lq_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보청산기초자료';
