--
-- Table structure for table `lse_bron_cr_inq`
--

DROP TABLE IF EXISTS `lse_bron_cr_inq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_bron_cr_inq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `inqdt` date NOT NULL COMMENT '조회일자',
  `nrdps_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자식별번호',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `ts_no` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전송번호',
  `ts_syscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전송시스템코드',
  `rcv_syscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수신시스템코드',
  `bron_anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '바로원응답코드',
  `bron_ans_msg` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '바로원응답메시지',
  `nrdps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자성명',
  `bron_injr_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '바로원상해유형코드',
  `clm_dthms` datetime DEFAULT NULL COMMENT '사고일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_bron_cr_inq_00` (`inqdt`,`nrdps_dscno`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='바로원계약조회';
