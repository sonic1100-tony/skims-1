--
-- Table structure for table `fin_bdl_tf_ap`
--

DROP TABLE IF EXISTS `fin_bdl_tf_ap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bdl_tf_ap` (
  `tfdt` date NOT NULL COMMENT '이체일자',
  `tf_bj_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이체대상종류코드',
  `tf_ct` decimal(7,0) NOT NULL COMMENT '이체건수',
  `tfamt` decimal(15,0) NOT NULL COMMENT '이체금액',
  `reqdt` date DEFAULT NULL COMMENT '요청일자',
  `rqog_cd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청기관코드',
  `rqfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청직원번호',
  `bdl_tf_ap_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일괄이체승인상태코드',
  `apdt` date DEFAULT NULL COMMENT '승인일자',
  `ap_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인기관코드',
  `ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인직원번호',
  `bsns_adx_file_dscno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무첨부파일식별번호',
  `elec_evd_img_bsnno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전자증빙이미지업무번호',
  `elec_prv_dcu_id` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전자결재문서아이디',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`tfdt`,`tf_bj_kndcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일괄이체승인';
