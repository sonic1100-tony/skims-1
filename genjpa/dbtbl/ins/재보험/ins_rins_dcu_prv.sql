--
-- Table structure for table `ins_rins_dcu_prv`
--

DROP TABLE IF EXISTS `ins_rins_dcu_prv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rins_dcu_prv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `dcu_prv_no` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '서류결재번호',
  `dltcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상대처코드',
  `cr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약구분코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `rest_no` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재기준번호',
  `fltno` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선단번호',
  `tot_bjno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '집계대상번호',
  `udrtk_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수형태코드',
  `crt_kornm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자한글명',
  `crt_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자식별번호',
  `dcu_prv_rqudt` date DEFAULT NULL COMMENT '서류결재의뢰일자',
  `ovsqt_amt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '해외분금액구분코드',
  `bdl_requ_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일괄의뢰구분코드',
  `ppdt` date DEFAULT NULL COMMENT '계상일자',
  `tot_woncv_xc_netam` decimal(15,0) NOT NULL COMMENT '전체원화환산정산정미금액',
  `thcp_woncv_xc_netam` decimal(15,0) NOT NULL COMMENT '당사원화환산정산정미금액',
  `re_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재구분코드',
  `re_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재유형코드',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자직원번호',
  `rm_perdt` date DEFAULT NULL COMMENT '송금기한일자',
  `aqr_dt` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구득일자',
  `aqr_asrdt` date DEFAULT NULL COMMENT '구득회신일자',
  `rins_dcu_asrdt` date DEFAULT NULL COMMENT '재보험서류회신일자',
  `dcu_prv_spc` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서류결재내역',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재직원번호',
  `prv_dthms` datetime DEFAULT NULL COMMENT '결재일시',
  `prv_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재상태코드',
  `prv_xmn_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재검토내용',
  `nxt_stm_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '다음결제직원번호',
  `xc_rqno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산의뢰번호',
  `ccc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CCC여부',
  `ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '삭제여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_rins_dcu_prv_00` (`dcu_prv_no`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보험서류결재';
