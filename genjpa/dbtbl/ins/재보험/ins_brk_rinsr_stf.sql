--
-- Table structure for table `ins_brk_rinsr_stf`
--

DROP TABLE IF EXISTS `ins_brk_rinsr_stf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_brk_rinsr_stf` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `brk_rincd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '브로커재보험자코드',
  `stf_seqno` decimal(5,0) NOT NULL COMMENT '직원순번',
  `stfnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원명',
  `ptn` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직위',
  `tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화번호',
  `fxno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FAX번호',
  `cral_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대전화번호',
  `mail_adr` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일주소',
  `chr_bsns` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당업무',
  `brk_rinsr_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '브로커재보험자업무구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_brk_rinsr_stf_00` (`brk_rincd`,`stf_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='브로커재보험자직원';
