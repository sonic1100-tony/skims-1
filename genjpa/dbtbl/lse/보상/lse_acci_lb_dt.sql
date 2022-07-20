--
-- Table structure for table `lse_acci_lb_dt`
--

DROP TABLE IF EXISTS `lse_acci_lb_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_acci_lb_dt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `clm_cascd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고원인코드',
  `clm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고구분코드',
  `dmge_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해구분코드',
  `lsetm_dmgit_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사피해물구분코드',
  `dmgit_dt_mtt` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해물세부사항',
  `victm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자구분코드',
  `victm_sexcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자성별코드',
  `victm_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자성명',
  `victm_age` decimal(3,0) DEFAULT NULL COMMENT '피해자연령',
  `born_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출생년도',
  `jbcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업코드',
  `inj_rnk` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부상급수',
  `slobs_rnk` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '후유장해급수',
  `chek_itnm` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '체크항목명',
  `dvpns_clm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원사고구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_acci_lb_dt_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`,`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재해배상상세';
