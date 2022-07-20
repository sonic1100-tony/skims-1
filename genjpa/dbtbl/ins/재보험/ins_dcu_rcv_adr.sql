--
-- Table structure for table `ins_dcu_rcv_adr`
--

DROP TABLE IF EXISTS `ins_dcu_rcv_adr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dcu_rcv_adr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `crt_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '생성년월',
  `crt_seqno` decimal(10,0) NOT NULL COMMENT '생성순번',
  `adr_seqno` decimal(10,0) NOT NULL COMMENT '주소순번',
  `rcv_ref_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '수신참조구분코드',
  `rcvnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수신자명',
  `mail_adr` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '이메일주소',
  `dcu_trs_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문서송신여부',
  `dcu_trs_dthms` datetime DEFAULT NULL COMMENT '문서송신일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_dcu_rcv_adr_00` (`crt_yymm`,`crt_seqno`,`adr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='문서수신주소';
