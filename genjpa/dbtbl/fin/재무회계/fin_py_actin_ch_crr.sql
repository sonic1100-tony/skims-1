--
-- Table structure for table `fin_py_actin_ch_crr`
--

DROP TABLE IF EXISTS `fin_py_actin_ch_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_py_actin_ch_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `py_crno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '지급발생번호',
  `act_ch_seqno` decimal(5,0) NOT NULL COMMENT '계좌변경순번',
  `chbf_py_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전지급방법코드',
  `chbf_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전은행코드',
  `chbf_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전계좌번호',
  `chbf_dpsnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전예금주명',
  `chaf_py_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후지급방법코드',
  `chaf_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후은행코드',
  `chaf_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후계좌번호',
  `chaf_dpsnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후예금주명',
  `act_ch_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌변경사유코드',
  `act_ch_rs_mtt` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌변경사유사항',
  `act_ch_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계좌변경상태코드',
  `apdt` date NOT NULL COMMENT '승인일자',
  `ap_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '승인기관코드',
  `ap_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '승인직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_py_actin_ch_crr_00` (`py_crno`,`act_ch_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지급계좌정보변경이력';
