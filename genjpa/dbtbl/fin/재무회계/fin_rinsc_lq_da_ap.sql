--
-- Table structure for table `fin_rinsc_lq_da_ap`
--

DROP TABLE IF EXISTS `fin_rinsc_lq_da_ap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_rinsc_lq_da_ap` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ap_reqno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '승인요청번호',
  `ap_rq_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '승인요청직원번호',
  `ap_reqdt` date NOT NULL COMMENT '승인요청일자',
  `ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인직원번호',
  `apdt` date DEFAULT NULL COMMENT '승인일자',
  `ac_ap_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '경리승인상태코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_rinsc_lq_da_ap_00` (`ap_reqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보사청산자료승인';
