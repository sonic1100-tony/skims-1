--
-- Table structure for table `fin_lq_bdl_asmt`
--

DROP TABLE IF EXISTS `fin_lq_bdl_asmt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_lq_bdl_asmt` (
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `lq_ldgno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '청산원장번호',
  `lgin_id` decimal(15,0) NOT NULL COMMENT '로그인아이디',
  `er_spc` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류내역',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cr_seqno`,`lq_ldgno`,`lgin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='청산일괄지정';
