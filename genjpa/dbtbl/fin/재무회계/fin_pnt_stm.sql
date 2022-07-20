--
-- Table structure for table `fin_pnt_stm`
--

DROP TABLE IF EXISTS `fin_pnt_stm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_pnt_stm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `acc_ldgno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '계정원장번호',
  `pnt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '포인트구분코드',
  `pnt_stm_no` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '포인트결제번호',
  `pnt_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '포인트상태코드',
  `stmdt` date DEFAULT NULL COMMENT '결제일자',
  `pnt_ccl_stm_no` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '포인트취소결제번호',
  `pnt_ccl_dthms` datetime DEFAULT NULL COMMENT '포인트취소일시',
  `pnt_dl_cpldt` date DEFAULT NULL COMMENT '포인트거래완료일자',
  `rpbl_opndt` date DEFAULT NULL COMMENT '책임개시일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_pnt_stm_00` (`acc_ldgno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='포인트결재';
