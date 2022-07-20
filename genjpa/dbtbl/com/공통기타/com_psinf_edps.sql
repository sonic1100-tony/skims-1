--
-- Table structure for table `com_psinf_edps`
--

DROP TABLE IF EXISTS `com_psinf_edps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_psinf_edps` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `acdno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '사건번호',
  `rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '주민등록번호',
  `ctm_seqno` decimal(5,0) DEFAULT NULL COMMENT '고객순번',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객명',
  `psinf_st_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보상태구분코드',
  `clm_cnc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고해제구분코드',
  `clm_rcpr_orgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고접수자기관명',
  `clm_rcpdt` date DEFAULT NULL COMMENT '사고접수일자',
  `clm_rcpr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고접수자직원번호',
  `cnc_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해제사유',
  `cnc_rgt_orgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해제등록기관명',
  `cncdt` date DEFAULT NULL COMMENT '해제일자',
  `cnc_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해제직원번호',
  `tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화번호',
  `hpno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대폰번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_com_psinf_edps_00` (`acdno`,`rsno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개인정보노출자';
