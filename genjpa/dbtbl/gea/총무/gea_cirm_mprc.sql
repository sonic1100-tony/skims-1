--
-- Table structure for table `gea_cirm_mprc`
--

DROP TABLE IF EXISTS `gea_cirm_mprc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_cirm_mprc` (
  `rqdt` date NOT NULL COMMENT '신청일자',
  `rq_seqno` decimal(5,0) NOT NULL COMMENT '신청순번',
  `rq_spc_seqno` decimal(5,0) NOT NULL COMMENT '신청내역순번',
  `mprc_seqno` decimal(5,0) NOT NULL COMMENT '시세순번',
  `pstno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '우편번호',
  `ba_adr` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '기본주소',
  `dtadr` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '상세주소',
  `rnt_are` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '임차면적',
  `rnt_rl_are` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '임차실면적',
  `rnt_guamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '임차보증금액',
  `mr` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '월세',
  `admcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '관리비',
  `obta_pth` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입수경로',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `mn_bldno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주건물번호',
  `sub_bldno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부건물번호',
  `ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고항목',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rqdt`,`rq_seqno`,`rq_spc_seqno`,`mprc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='주변시세';
