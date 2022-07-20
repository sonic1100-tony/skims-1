--
-- Table structure for table `ins_ovse_rins_xc_adm`
--

DROP TABLE IF EXISTS `ins_ovse_rins_xc_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ovse_rins_xc_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `amt_cr_untno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '금액발생단위번호',
  `cr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약구분코드',
  `ovsqt_amt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '해외분금액구분코드',
  `dltcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상대처코드',
  `rinsr_reno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험자출재번호',
  `ovse_rins_xc_rqno` varchar(12) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해외재보험정산의뢰번호',
  `re_dlno` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재처리번호',
  `rtro_pvl_seqno` decimal(5,0) DEFAULT NULL COMMENT '수재계상순번',
  `rincd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험자코드',
  `udrtk_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수형태코드',
  `re_pstrp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재경유처구분코드',
  `xc_amt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산금액구분코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `optn_trt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '임의특약구분코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `hngl_relnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글관계자명',
  `woncv_xc_net_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산정산정미금액',
  `uc_np_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미수미지급구분코드',
  `xcdt` date DEFAULT NULL COMMENT '정산일자',
  `op_crano` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'OP계약번호',
  `trt_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특약년월',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_ovse_rins_xc_adm_00` (`amt_cr_untno`,`cr_flgcd`,`ovsqt_amt_flgcd`,`dltcd`,`rinsr_reno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='해외재보험정산관리';
