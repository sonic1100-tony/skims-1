--
-- Table structure for table `fin_dsh_bll_crr`
--

DROP TABLE IF EXISTS `fin_dsh_bll_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_dsh_bll_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `bll_ldgno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '어음원장번호',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `crdt` date NOT NULL COMMENT '발생일자',
  `dsh_bll_prgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '부도어음진행코드',
  `chr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당직원번호',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_dsh_bll_crr_00` (`bll_ldgno`,`cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='부도어음이력';
