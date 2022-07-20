--
-- Table structure for table `gea_form_cd`
--

DROP TABLE IF EXISTS `gea_form_cd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_form_cd` (
  `itmcd` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '품목코드',
  `form_ikdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서식보종코드',
  `form_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서식종류코드',
  `form_sno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서식일련번호',
  `form_sub_sno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서식서브일련번호',
  `form_cdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서식코드명',
  `form_untcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서식단위코드',
  `adm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리기관코드',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관코드',
  `form_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서식형태코드',
  `papr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '용지구분코드',
  `form_rgt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서식등록구분코드',
  `fnl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종여부',
  `brma_apdt` date DEFAULT NULL COMMENT '지점장승인일자',
  `br_orghd_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지점기관장직원번호',
  `adm_org_chrps_apdt` date DEFAULT NULL COMMENT '관리기관담당자승인일자',
  `adm_org_chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리기관담당직원번호',
  `adm_org_admr_apdt` date DEFAULT NULL COMMENT '관리기관관리자승인일자',
  `adm_org_admr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리기관관리자직원번호',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `chdt` date DEFAULT NULL COMMENT '변경일자',
  `stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원번호',
  `stdt` date DEFAULT NULL COMMENT '기준일자',
  `form_prd_mtd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서식제작방법구분코드',
  `ch_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경사유',
  `qant` decimal(5,0) DEFAULT NULL COMMENT '수량',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`itmcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='서식코드';
