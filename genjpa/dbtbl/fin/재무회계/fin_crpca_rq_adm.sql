--
-- Table structure for table `fin_crpca_rq_adm`
--

DROP TABLE IF EXISTS `fin_crpca_rq_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_crpca_rq_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `crpca_admno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '법인카드관리번호',
  `rqdt` date DEFAULT NULL COMMENT '신청일자',
  `rqaps_empno_cd` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청자사번코드',
  `rqaps_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청자기관코드',
  `crpca_prg_rkcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인카드진행단계코드',
  `rq_dt_spc` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청세부내역',
  `lwad_plg_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '준법서약업무구분코드',
  `crp_crdno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인카드번호',
  `chbf_lmamt` decimal(18,0) DEFAULT NULL COMMENT '변경전한도금액',
  `chaf_lmamt` decimal(18,0) DEFAULT NULL COMMENT '변경후한도금액',
  `ap_strdt` date DEFAULT NULL COMMENT '적용시작일자',
  `ap_nddt` date DEFAULT NULL COMMENT '적용종료일자',
  `ap_trm_flgcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적용기간구분코드',
  `rtrs_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반송사유내용',
  `rl_us_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실사용직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_crpca_rq_adm_00` (`crpca_admno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='법인카드신청관리';
