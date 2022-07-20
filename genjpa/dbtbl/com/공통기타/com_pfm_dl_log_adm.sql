--
-- Table structure for table `com_pfm_dl_log_adm`
--

DROP TABLE IF EXISTS `com_pfm_dl_log_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_pfm_dl_log_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `reqno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '요청번호',
  `bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무구분코드',
  `pfm_dl_id` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '프로프레임거래ID',
  `pfm_fnccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '프로프레임기능코드',
  `pfm_log_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '프로프레임로그유무',
  `bj_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대상직원번호',
  `dmd_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자직원번호',
  `rqrs` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청사유',
  `rq_dthms` datetime DEFAULT NULL COMMENT '요청일시',
  `ap_dthms` datetime DEFAULT NULL COMMENT '승인일시',
  `ers_dthms` datetime DEFAULT NULL COMMENT '삭제일시',
  `bsns_lclcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무대분류코드',
  `bsns_mdccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무중분류코드',
  `stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원번호',
  `prv_info_seqno` decimal(5,0) DEFAULT NULL COMMENT '결재정보순번',
  `prv_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재상태코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_com_pfm_dl_log_adm_00` (`reqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='프로프레임거래로그관리';
