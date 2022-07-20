--
-- Table structure for table `cus_ctm_cmn_cd`
--

DROP TABLE IF EXISTS `cus_ctm_cmn_cd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_cmn_cd` (
  `ctm_cmn_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '고객공통코드',
  `ctm_cmn_cdvl` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '고객공통코드값',
  `ctm_cmn_cd_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '고객공통코드구분코드',
  `ctm_cmn_cdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객공통코드명',
  `out_seqno` decimal(5,0) DEFAULT NULL COMMENT '출력순번',
  `ctm_cmn_cd_xpnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객공통코드설명',
  `ctm_cmn_cd_rltn_1_vl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객공통코드연계1값',
  `ctm_cmn_cd_rltn_2_vl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객공통코드연계2값',
  `ctm_cmn_cd_rgtdt` date DEFAULT NULL COMMENT '고객공통코드등록일자',
  `us_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ctm_cmn_cd`,`ctm_cmn_cdvl`,`ctm_cmn_cd_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객공통코드';
