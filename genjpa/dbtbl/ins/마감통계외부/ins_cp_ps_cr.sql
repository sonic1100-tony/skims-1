--
-- Table structure for table `ins_cp_ps_cr`
--

DROP TABLE IF EXISTS `ins_cp_ps_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cp_ps_cr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ikd_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종구분코드',
  `ins_st` date NOT NULL COMMENT '보험시기',
  `ins_clstr` date NOT NULL COMMENT '보험종기',
  `cnrdt` date NOT NULL COMMENT '계약일자',
  `gn_co_obj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일반공동물건구분코드',
  `nw_rnw_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신규갱신구분코드',
  `pym_mtdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '납입방법코드',
  `ndscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배서코드',
  `cr_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약상태코드',
  `milg_trt_isyn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '마일리지특약가입여부',
  `milg_xc_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '마일리지정산여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_cp_ps_cr_00` (`cls_yymm`,`plyno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차보유계약';
