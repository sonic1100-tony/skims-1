--
-- Table structure for table `ins_py_prv`
--

DROP TABLE IF EXISTS `ins_py_prv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_py_prv` (
  `whpy_rqdt` date NOT NULL COMMENT '제지급신청일자',
  `ssno` decimal(5,0) NOT NULL COMMENT '발행번호',
  `ss_dtno` decimal(3,0) NOT NULL COMMENT '발행세부번호',
  `prv_seqno` decimal(5,0) NOT NULL COMMENT '결재순번',
  `prv_reqdt` date DEFAULT NULL COMMENT '결재요청일자',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `py_cr_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급발생유형코드',
  `prv_rq_rscd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재요청사유코드',
  `chr_dep_cd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당부서코드',
  `dmd_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자직원번호',
  `rtamt` decimal(17,2) DEFAULT NULL COMMENT '환급금액',
  `py_prv_stcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급결재상태코드',
  `prv_rq_dthms` datetime DEFAULT NULL COMMENT '결재요청일시',
  `prvmn_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재자직원번호',
  `prvdt` date DEFAULT NULL COMMENT '결재일자',
  `prv_hms` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재시각',
  `retn_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반려사유',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`whpy_rqdt`,`ssno`,`ss_dtno`,`prv_seqno`),
  KEY `idx_ins_py_prv_10` (`plyno`),
  KEY `idx_ins_py_prv_11` (`prvmn_stfno`,`prv_reqdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지급결재';
