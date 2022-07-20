--
-- Table structure for table `ccm_asmt_cpent_vl`
--

DROP TABLE IF EXISTS `ccm_asmt_cpent_vl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_asmt_cpent_vl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `stmvo_entp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '현장출동업체구분코드',
  `vl_seqno` decimal(5,0) NOT NULL COMMENT '평가순번',
  `mntn_fctnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정비공장명',
  `bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자번호',
  `cmp_cnr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상센터기관코드',
  `cmp_cnr_orgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상센터기관명',
  `cmp_tm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상팀기관코드',
  `cmp_tm_orgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상팀기관명',
  `ac_cop_rt` decimal(7,2) DEFAULT NULL COMMENT '부품구성비율',
  `ac_cop_poct` decimal(7,2) DEFAULT NULL COMMENT '부품구성점수',
  `frst_stm_is_rt` decimal(7,2) DEFAULT NULL COMMENT '선견적발급비율',
  `frst_stm_is_poct` decimal(7,2) DEFAULT NULL COMMENT '선견적발급점수',
  `rnt_lend_rt` decimal(7,2) DEFAULT NULL COMMENT '렌트대여비율',
  `rnt_lend_poct` decimal(7,2) DEFAULT NULL COMMENT '렌트대여점수',
  `drt_dm_cop_rt` decimal(7,2) DEFAULT NULL COMMENT '간접손해구성비율',
  `drt_dm_cop_poct` decimal(7,2) DEFAULT NULL COMMENT '간접손해구성점수',
  `ntg_rt` decimal(7,2) DEFAULT NULL COMMENT '입고비율',
  `ntg_poct` decimal(7,2) DEFAULT NULL COMMENT '입고점수',
  `accpt_rt` decimal(7,2) DEFAULT NULL COMMENT '수용비율',
  `accpt_poct` decimal(7,2) DEFAULT NULL COMMENT '수용점수',
  `imu_rt` decimal(7,2) DEFAULT NULL COMMENT '면책비율',
  `imu_poct` decimal(7,2) DEFAULT NULL COMMENT '면책점수',
  `mnth_vl_poct` decimal(7,2) DEFAULT NULL COMMENT '월평가점수',
  `vl_rank` decimal(7,0) DEFAULT NULL COMMENT '평가순위',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_asmt_cpent_vl_00` (`st_yymm`,`stmvo_entp_flgcd`,`vl_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지정협력업체평가';
