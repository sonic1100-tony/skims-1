--
-- Table structure for table `sam_crstf_acc_rq`
--

DROP TABLE IF EXISTS `sam_crstf_acc_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sam_crstf_acc_rq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stf_acc_admno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '직원계정관리번호',
  `rq_seqno` decimal(5,0) NOT NULL COMMENT '신청순번',
  `stf_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원구분코드',
  `prv_bsns_kyvl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재업무키값',
  `prv_nd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재종료구분코드',
  `prv_st_chdt` date DEFAULT NULL COMMENT '결재상태변경일자',
  `nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성명',
  `rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주민번호',
  `stf_acc_rq_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원계정신청유형코드',
  `stf_acc_rqdt` date DEFAULT NULL COMMENT '직원계정신청일자',
  `stf_acc_nddt` date DEFAULT NULL COMMENT '직원계정만료일자',
  `stf_acc_ersdt` date DEFAULT NULL COMMENT '직원계정삭제일자',
  `bsns_oj_dt` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무목적상세',
  `bsns_tp_dt` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무유형상세',
  `rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_sam_crstf_acc_rq_00` (`stf_acc_admno`,`rq_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약직원계정신청';
