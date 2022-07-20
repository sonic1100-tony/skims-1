--
-- Table structure for table `ins_cr_ta_prv_rq`
--

DROP TABLE IF EXISTS `ins_cr_ta_prv_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_ta_prv_rq` (
  `rqno` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '신청번호',
  `rqdt` date NOT NULL COMMENT '신청일자',
  `rcpr_empno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '접수자사번',
  `tabf_dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '이관전취급직원번호',
  `tabf_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '이관전기관코드',
  `tabf_orghd_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '이관전기관장직원번호',
  `tabf_orghd_iptdt` date DEFAULT NULL COMMENT '이관전기관장입력일자',
  `taaf_dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '이관후취급직원번호',
  `taaf_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이관후기관코드',
  `taaf_orghd_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '이관후기관장직원번호',
  `taaf_orghd_iptdt` date DEFAULT NULL COMMENT '이관후기관장입력일자',
  `ta_dldt` date DEFAULT NULL COMMENT '이관처리일자',
  `ps_crct` decimal(10,0) DEFAULT NULL COMMENT '보유계약건수',
  `ta_rqct` decimal(10,0) DEFAULT NULL COMMENT '이관요청건수',
  `ta_nmlct` decimal(10,0) DEFAULT NULL COMMENT '이관정상건수',
  `erct` decimal(7,0) DEFAULT NULL COMMENT '오류건수',
  `ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '삭제여부',
  `onl_rq_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '온라인신청여부',
  `bdl_ta_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일괄이관사유코드',
  `ta_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이관구분코드',
  `inpvl` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입력값',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약이관결재신청';
