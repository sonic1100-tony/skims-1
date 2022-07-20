--
-- Table structure for table `gea_ase_rq_supt`
--

DROP TABLE IF EXISTS `gea_ase_rq_supt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_ase_rq_supt` (
  `reqno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '요청번호',
  `rq_supt_seqno` decimal(3,0) NOT NULL COMMENT '요청지원순번',
  `rcpr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '접수자직원번호',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자직원번호',
  `fnl_prv_seqno` decimal(3,0) DEFAULT NULL COMMENT '최종결재순번',
  `ase_supt_prgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자산지원진행코드',
  `prvmn_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재자직원번호',
  `nxt_ase_supt_prgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '다음자산지원진행코드',
  `nxt_prvmn_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '다음결재자직원번호',
  `bsns_adx_file_dscno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무첨부파일식별번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`reqno`,`rq_supt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자산요청지원';
