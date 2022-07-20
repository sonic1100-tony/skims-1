--
-- Table structure for table `ins_rk_nv_bzwpl`
--

DROP TABLE IF EXISTS `ins_rk_nv_bzwpl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rk_nv_bzwpl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rk_nv_rqno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '위험조사의뢰번호',
  `bzwpl_sno` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '사업장일련번호',
  `bzwpl_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업장명',
  `lctn_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소재지우편번호',
  `lctn_adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소재지주소',
  `cmp_pst_depnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회사소속부서명',
  `tlno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화번호구분코드',
  `chrps_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자전화번호',
  `et_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타내용',
  `requ_rq_sfchk_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의뢰요청안전점검여부',
  `requ_rq_rk_nv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의뢰요청위험조사여부',
  `requ_rq_rtaqr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의뢰요청요율구득여부',
  `requ_rq_vlamt_vl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의뢰요청가액평가여부',
  `requ_rq_cst_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의뢰요청건설여부',
  `bsns_rq_sfchk_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무요청안전점검여부',
  `bsns_rq_rk_nv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무요청위험조사여부',
  `bsns_rq_rtaqr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무요청요율구득여부',
  `bsns_rq_vlamt_vl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무요청가액평가여부',
  `bsns_rq_cst_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무요청건설여부',
  `pl_rq_sfchk_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계획요청안전점검여부',
  `pl_rq_rk_nv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계획요청위험조사여부',
  `pl_rq_rtaqr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계획요청요율구득여부',
  `pl_rq_vlamt_vl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계획요청가액평가여부',
  `pl_rq_cst_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계획요청건설여부',
  `rpt_rq_sfchk_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보고요청안전점검여부',
  `rpt_rq_rk_nv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보고요청위험조사여부',
  `rpt_rq_rtaqr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보고요청요율구득여부',
  `rpt_rq_vlamt_vl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보고요청가액평가여부',
  `rpt_rq_cst_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보고요청건설여부',
  `trv_pl_no` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출장계획번호',
  `trv_rpt_no` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출장보고번호',
  `safe_dgn_rptg_no` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안전진단보고서번호',
  `trv_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출장상태코드',
  `enddt` date DEFAULT NULL COMMENT '종결일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_rk_nv_bzwpl_00` (`rk_nv_rqno`,`bzwpl_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='위험조사사업장';
