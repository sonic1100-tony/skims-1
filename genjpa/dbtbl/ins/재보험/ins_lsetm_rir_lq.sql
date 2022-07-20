--
-- Table structure for table `ins_lsetm_rir_lq`
--

DROP TABLE IF EXISTS `ins_lsetm_rir_lq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_lsetm_rir_lq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `xc_cmp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '정산회사구분코드',
  `bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무구분코드',
  `xc_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '정산대상구분코드',
  `pvl_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '계상년월',
  `rir_lq_sno` decimal(7,0) NOT NULL COMMENT '재보청산일련번호',
  `rinsc_lq_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보사청산년월',
  `re_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재구분코드',
  `trt_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특약년월',
  `dltcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상대처코드',
  `rir_oiccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보원보사코드',
  `ac_ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '경리보험종목코드',
  `ptccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참여사코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `rins_gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험상품코드',
  `rk_tpcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위험유형코드',
  `re_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재유형코드',
  `crrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자명',
  `re_dlno` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재처리번호',
  `mgcmp_plyno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간사사증권번호',
  `otcm_plyno` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타사증권번호',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `cmear_riamt` decimal(17,2) DEFAULT NULL COMMENT '출수재보험금액',
  `rertr_csamt` decimal(17,2) DEFAULT NULL COMMENT '출수재비용금액',
  `woncv_rertr_ibamt` decimal(15,0) DEFAULT NULL COMMENT '원화환산출수재보험금액',
  `woncv_rertr_csamt` decimal(15,0) DEFAULT NULL COMMENT '원화환산출수재비용금액',
  `ac_mpp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '경리매핑여부',
  `ac_mpp_ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '경리매핑삭제여부',
  `xc_mpp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산매핑구분코드',
  `xc_mpp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산매핑여부',
  `xc_mpp_ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산매핑삭제여부',
  `ac_tf_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '경리이체구분코드',
  `lq_dotno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청산일계번호',
  `rertr_lq_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출수재청산여부',
  `rir_lq_dscrd_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보청산불일치사유',
  `re_pstrp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재경유처구분코드',
  `clm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수조사순번',
  `udrtk_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수형태코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손사재보청산';
