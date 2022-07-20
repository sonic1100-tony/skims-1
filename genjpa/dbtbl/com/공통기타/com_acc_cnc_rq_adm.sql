--
-- Table structure for table `com_acc_cnc_rq_adm`
--

DROP TABLE IF EXISTS `com_acc_cnc_rq_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_acc_cnc_rq_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `reqno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '요청번호',
  `dmd_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자직원번호',
  `rqrs` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청사유',
  `rq_dthms` datetime DEFAULT NULL COMMENT '요청일시',
  `dlr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리자직원번호',
  `dl_dthms` datetime DEFAULT NULL COMMENT '처리일시',
  `dl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_com_acc_cnc_rq_adm_00` (`reqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계정해제요청관리';
