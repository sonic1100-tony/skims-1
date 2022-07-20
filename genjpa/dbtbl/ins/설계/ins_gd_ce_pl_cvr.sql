--
-- Table structure for table `ins_gd_ce_pl_cvr`
--

DROP TABLE IF EXISTS `ins_gd_ce_pl_cvr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_gd_ce_pl_cvr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `plsno` decimal(5,0) NOT NULL COMMENT '플랜순번',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `is_av_sexcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입가능성별코드',
  `mn_injr_grd_seqno` decimal(3,0) DEFAULT NULL COMMENT '최소상해등급순번',
  `mx_injr_grd_seqno` decimal(3,0) DEFAULT NULL COMMENT '최대상해등급순번',
  `mn_is_av_age` decimal(3,0) DEFAULT NULL COMMENT '최소가입가능연령',
  `mx_is_av_age` decimal(3,0) DEFAULT NULL COMMENT '최대가입가능연령',
  `cvr_isamt_bavl` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보가입금액기본값',
  `rk_tpcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위험유형코드',
  `scr_idc_ordr` decimal(5,0) DEFAULT NULL COMMENT '화면표시순서',
  `is_av_drve_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입가능운전형태코드',
  `is_av_btpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입가능업종코드',
  `oj_tpcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '목적물유형코드',
  `is_av_bn_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입가능업종분류코드',
  `essn_is_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '필수가입여부',
  `db_is_av_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '중복가입가능여부',
  `isamt_mdf_av_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입금액수정가능여부',
  `isamt_mnvl` decimal(17,2) DEFAULT NULL COMMENT '가입금액최소값',
  `isamt_mxvl` decimal(17,2) DEFAULT NULL COMMENT '가입금액최대값',
  `rec_cvr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추천담보여부',
  `is_av_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입가능관계코드',
  `db_cvr_apyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '중복담보적용여부',
  `cvr_ndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보만기코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_gd_ce_pl_cvr_00` (`gdcd`,`plsno`,`cvrcd`,`cvr_seqno`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품모집플랜담보';
