--
-- Table structure for table `fin_crd_binno`
--

DROP TABLE IF EXISTS `fin_crd_binno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_crd_binno` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `binno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT 'BIN번호',
  `crd_cmpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '카드회사코드',
  `rgt_rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록요청직원번호',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `crd_chek_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신용체크구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_crd_binno_00` (`binno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='카드BIN번호';
