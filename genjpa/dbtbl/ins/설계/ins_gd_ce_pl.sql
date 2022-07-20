--
-- Table structure for table `ins_gd_ce_pl`
--

DROP TABLE IF EXISTS `ins_gd_ce_pl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_gd_ce_pl` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `plsno` decimal(5,0) NOT NULL COMMENT '플랜순번',
  `plnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '플랜명',
  `scr_idc_ordr` decimal(5,0) NOT NULL COMMENT '화면표시순서',
  `vald_strdt` date NOT NULL COMMENT '유효시작일자',
  `vald_nddt` date NOT NULL COMMENT '유효종료일자',
  `ce_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '모집기관코드',
  `plcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '플랜코드',
  `ba_pl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '기본플랜여부',
  `ce_pl_op_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집플랜운용형태코드',
  `ce_pl_cvr_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집플랜담보종류코드',
  `set_plcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SET플랜코드',
  `ndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '만기코드',
  `pym_trmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입기간코드',
  `is_av_rel_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입가능관계구분코드',
  `acm_rk_ap_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '누적위험적용유형코드',
  `embr_is_av_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '태아가입가능여부',
  `pl_gpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '플랜그룹코드',
  `pl_xpnm` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '플랜설명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`plsno`),
  KEY `idx_ins_gd_ce_pl_10` (`plcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품모집플랜';
