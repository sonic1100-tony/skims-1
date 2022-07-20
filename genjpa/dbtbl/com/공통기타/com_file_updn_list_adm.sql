--
-- Table structure for table `com_file_updn_list_adm`
--

DROP TABLE IF EXISTS `com_file_updn_list_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_file_updn_list_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `updn_reqno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '업다운요청번호',
  `rq_list_seqno` decimal(3,0) NOT NULL COMMENT '요청리스트순번',
  `rq_syscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청시스템코드',
  `rq_file_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청파일경로',
  `rq_finm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청파일명',
  `bj_syscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대상시스템코드',
  `bj_file_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대상파일경로',
  `bj_finm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대상파일명',
  `rq_rsm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청개요',
  `rq_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청내용',
  `rq_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청결과코드',
  `rq_rst_cn` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청결과내용',
  `cpldt` date DEFAULT NULL COMMENT '완료일자',
  `trnm_orgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전달기관명',
  `psn_info_incld_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보포함내용',
  `psn_info_ct` decimal(9,0) DEFAULT NULL COMMENT '개인정보건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_com_file_updn_list_adm_00` (`updn_reqno`,`rq_list_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='파일업다운리스트관리';
