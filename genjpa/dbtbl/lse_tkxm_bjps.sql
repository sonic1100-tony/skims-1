--
-- Table structure for table `lse_tkxm_bjps`
--

DROP TABLE IF EXISTS `lse_tkxm_bjps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_tkxm_bjps` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `exm_ope_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '시험시행년월',
  `exm_seqno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '시험순번',
  `exm_itm_seqno` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '시험과목순번',
  `tkxm_bjps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '응시대상자직원번호',
  `cmp_cnr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상센터기관코드',
  `cmp_tm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상팀기관코드',
  `clpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직급코드',
  `exm_tkxm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시험응시여부',
  `tkxm_str_dthms` datetime DEFAULT NULL COMMENT '응시시작일시',
  `tkxm_cplt_dthms` datetime DEFAULT NULL COMMENT '응시완료일시',
  `rst_poct` decimal(10,2) DEFAULT NULL COMMENT '결과점수',
  `slctp_rst_poct` decimal(10,2) DEFAULT NULL COMMENT '선택형결과점수',
  `sjtv_rst_poct` decimal(10,2) DEFAULT NULL COMMENT '주관식결과점수',
  `qufcq_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자격취득여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_tkxm_bjps_00` (`exm_ope_yymm`,`exm_seqno`,`exm_itm_seqno`,`tkxm_bjps_stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='응시대상자';
