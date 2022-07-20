--
-- Table structure for table `com_cmn_ctn_lgin_adm`
--

DROP TABLE IF EXISTS `com_cmn_ctn_lgin_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_cmn_ctn_lgin_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctm_info_srv_id` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객정보서비스ID',
  `ctm_info_srv_func` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객정보서비스함수',
  `srv_xpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서비스설명',
  `ctm_dscno_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호항목명',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객명',
  `inq_key_1` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조회KEY1',
  `inq_key_1_xpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조회KEY1설명',
  `inq_key_2` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조회KEY2',
  `inq_key_2_xpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조회KEY2설명',
  `inq_key_3` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조회KEY3',
  `inq_key_3_xpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조회KEY3설명',
  `inq_key_4` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조회KEY4',
  `inq_key_4_xpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조회KEY4설명',
  `inq_key_5` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조회KEY5',
  `inq_key_5_xpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조회KEY5설명',
  `inq_key_6` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조회KEY6',
  `inq_key_6_xpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조회KEY6설명',
  `inq_key_7` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조회KEY7',
  `inq_key_7_xpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조회KEY7설명',
  `inq_key_8` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조회KEY8',
  `inq_key_8_xpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조회KEY8설명',
  `inq_key_9` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조회KEY9',
  `inq_key_9_xpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조회KEY9설명',
  `inq_key_10` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조회KEY10',
  `inq_key_10_xpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조회KEY10설명',
  `argt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배열여부',
  `argnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배열명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='공통고객로그인관리';
