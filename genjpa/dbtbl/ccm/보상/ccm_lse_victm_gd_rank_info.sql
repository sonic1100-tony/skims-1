--
-- Table structure for table `ccm_lse_victm_gd_rank_info`
--

DROP TABLE IF EXISTS `ccm_lse_victm_gd_rank_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_lse_victm_gd_rank_info` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stdt` date NOT NULL COMMENT '기준일자',
  `crdis_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신용정보원업무구분코드',
  `crdis_sno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신용정보원일련번호',
  `clm_sno` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '사고일련번호',
  `dm_sno` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '청구일련번호',
  `victm_gd_sno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '피해자물일련번호',
  `victm_psn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자개인여부',
  `victm_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자주민번호',
  `vicnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자명',
  `victm_info_of_agryn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자정보제공동의여부',
  `dmgnm` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해물명',
  `drv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전자여부',
  `victm_bordn_flgcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자탑승구분코드',
  `victm_injr_rnk` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자상해급수',
  `crdis_dmge_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원피해구분코드',
  `dmge_flt_rt` decimal(3,0) DEFAULT NULL COMMENT '피해과실비율',
  `aiscd_1` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'AIS코드1',
  `aiscd_2` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'AIS코드2',
  `aiscd_3` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'AIS코드3',
  `aiscd_4` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'AIS코드4',
  `dmge_carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해차량번호',
  `crdis_dmgit_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원피해물구분코드',
  `rnt_entnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '렌트업체명',
  `rnt_entp_bprno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '렌트업체사업자등록번호',
  `rnt_str_dthms` datetime DEFAULT NULL COMMENT '렌트시작일시',
  `rnt_nd_dthms` datetime DEFAULT NULL COMMENT '렌트종료일시',
  `da_stdt` date NOT NULL COMMENT '자료기준일자',
  `dl_rs_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리사유구분코드',
  `crdis_da_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원자료처리구분코드',
  `tsdt` date DEFAULT NULL COMMENT '전송일자',
  `rcvdt` date DEFAULT NULL COMMENT '수신일자',
  `crdis_er_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원오류구분코드',
  `anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답코드',
  `er_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_lse_victm_gd_rank_info_00` (`stdt`,`crdis_bsns_flgcd`,`crdis_sno`,`clm_sno`,`dm_sno`,`victm_gd_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험신용정보_피해자물서열정보';
