--
-- Table structure for table `gea_form_rq`
--

DROP TABLE IF EXISTS `gea_form_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_form_rq` (
  `rqdt` date NOT NULL COMMENT '신청일자',
  `rqor_cd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '신청기관코드',
  `form_rq_sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '서식신청일련번호',
  `form_rq_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서식신청상태코드',
  `itmcd` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품목코드',
  `form_ikdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서식보종코드',
  `form_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서식종류코드',
  `form_sno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서식일련번호',
  `form_rq_qant` decimal(5,0) DEFAULT NULL COMMENT '서식신청수량',
  `rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청직원번호',
  `br_chrps_apdt` date DEFAULT NULL COMMENT '지점담당자승인일자',
  `br_chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지점담당자직원번호',
  `br_chrps_ap_qant` decimal(5,0) DEFAULT NULL COMMENT '지점담당자승인수량',
  `brma_apdt` date DEFAULT NULL COMMENT '지점장승인일자',
  `br_orghd_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지점기관장직원번호',
  `brma_ap_qant` decimal(5,0) DEFAULT NULL COMMENT '지점장승인수량',
  `adm_org_chrps_apdt` date DEFAULT NULL COMMENT '관리기관담당자승인일자',
  `form_mfg_qant` decimal(5,0) DEFAULT NULL COMMENT '서식출고수량',
  `adm_org_chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리기관담당직원번호',
  `adm_org_chrps_ap_qant` decimal(5,0) DEFAULT NULL COMMENT '관리기관담당자승인수량',
  `adm_org_admr_apdt` date DEFAULT NULL COMMENT '관리기관관리자승인일자',
  `adm_org_admr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리기관관리자직원번호',
  `adm_org_admr_ap_qant` decimal(5,0) DEFAULT NULL COMMENT '관리기관관리자승인수량',
  `form_mfg_sno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서식출고일련번호',
  `rcdt` date DEFAULT NULL COMMENT '수령일자',
  `rc_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수령직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rqdt`,`rqor_cd`,`form_rq_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='서식신청';
