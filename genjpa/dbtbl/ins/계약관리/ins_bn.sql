--
-- Table structure for table `ins_bn`
--

DROP TABLE IF EXISTS `ins_bn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_bn` (
  `bn_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업종분류코드',
  `ins_btpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험업종코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `bnnm` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업종명',
  `bn_lvlcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업종레벨코드',
  `dvpns_btpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원업종코드',
  `bn_adm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업종관리구분코드',
  `rkrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '위험률',
  `rkgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위험군코드',
  `rob_rnkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도난급수코드',
  `damag_rnkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파손급수코드',
  `std_self_chamt_rt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '표준자기부담금비율',
  `std_self_chamt_itcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '표준자기부담금항목코드',
  `std_cvr_trm` decimal(3,0) DEFAULT NULL COMMENT '표준담보기간',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `ppr_bn_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위업종분류코드',
  `ppr_btpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위업종코드',
  `prprt_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재물등급코드',
  `bn_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업종등급코드',
  `rpair_rk_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수리위험여부',
  `fnl_lvl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종레벨여부',
  `ce_cm_grp` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집수수료군',
  `bn_idc_seqno` decimal(5,0) DEFAULT NULL COMMENT '업종표시순번',
  `bld_rank1_rkrt` decimal(12,6) DEFAULT '0.000000' COMMENT '건물1급위험율',
  `bld_rank2_rkrt` decimal(12,6) DEFAULT '0.000000' COMMENT '건물2급위험율',
  `bld_rank3_rkrt` decimal(12,6) DEFAULT '0.000000' COMMENT '건물3급위험율',
  `bld_rank4_rkrt` decimal(12,6) DEFAULT '0.000000' COMMENT '건물4급위험율',
  `main_bn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '주요업종여부',
  `nema_btpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소방청업종코드',
  `bn_udrtk_cnd_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업종인수조건내용',
  `bn_ennm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업종영문명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bn_csfcd`,`ins_btpcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='업종';
