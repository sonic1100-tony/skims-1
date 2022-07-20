--
-- Table structure for table `ins_ag_drve_is_requ_info`
--

DROP TABLE IF EXISTS `ins_ag_drve_is_requ_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ag_drve_is_requ_info` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ins_is_rqno` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '보험가입의뢰번호',
  `hngl_ctmnm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글고객명',
  `eng_ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문고객명',
  `bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자번호',
  `crpno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인번호',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `sd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시군구',
  `twmd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '읍면동',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `mail_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일아이디',
  `mail_domn` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일도메인',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `ap_strdt` date DEFAULT NULL COMMENT '적용시작일자',
  `ap_nddt` date DEFAULT NULL COMMENT '적용종료일자',
  `ins_is_rqudt` date DEFAULT NULL COMMENT '보험가입의뢰일자',
  `fn_cnsm_tpcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금융소비자유형코드',
  `rcp_mtt1` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수사항1',
  `rcp_mtt2` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수사항2',
  `rcp_mtt3` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수사항3',
  `rcp_mtt4` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수사항4',
  `rcp_mtt5` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수사항5',
  `ag_drve_entcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대리운전업체코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pix_ins_ag_drve_is_requ_info_00` (`ins_is_rqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='대리운전가입의뢰정보';
