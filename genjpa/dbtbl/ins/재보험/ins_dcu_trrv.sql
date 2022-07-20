--
-- Table structure for table `ins_dcu_trrv`
--

DROP TABLE IF EXISTS `ins_dcu_trrv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dcu_trrv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `crt_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '생성년월',
  `crt_seqno` decimal(10,0) NOT NULL COMMENT '생성순번',
  `rins_dcu_no` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험문서번호',
  `rcv_plac_gp_seqno` decimal(5,0) DEFAULT NULL COMMENT '수신처그룹순번',
  `cmpnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '회사명',
  `brk_rinsc_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '브로커재보험사코드',
  `trrv_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '송수신구분코드',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자직원번호',
  `chrps_stf_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자직원기관코드',
  `wrtdt` date NOT NULL COMMENT '작성일자',
  `trrv_dthms` datetime DEFAULT NULL COMMENT '송수신일시',
  `trrv_titl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송수신제목',
  `trrv_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송수신내용',
  `dcu_trs_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문서송신여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_dcu_trrv_00` (`crt_yymm`,`crt_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='문서송수신';
