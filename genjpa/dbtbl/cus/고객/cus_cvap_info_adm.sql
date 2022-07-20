--
-- Table structure for table `cus_cvap_info_adm`
--

DROP TABLE IF EXISTS `cus_cvap_info_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_cvap_info_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cvap_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '민원구분코드',
  `cvap_rcpdt` date NOT NULL COMMENT '민원접수일자',
  `cvap_rcpno` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '민원접수번호',
  `cvam_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원인성명',
  `cvam_ctmdn` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원인고객식별번호',
  `cvap_rq_flg_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원요청구분내용',
  `cvap_tp_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원유형내용',
  `cvap_dl_ctn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원처리의견',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_cvap_info_adm_00` (`cvap_flgcd`,`cvap_rcpdt`,`cvap_rcpno`),
  KEY `idx_cus_cvap_info_adm_10` (`cvam_ctmdn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='민원정보관리';
