--
-- Table structure for table `cus_fndli_req_bj_bsns`
--

DROP TABLE IF EXISTS `cus_fndli_req_bj_bsns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_fndli_req_bj_bsns` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_sno` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '접수일련번호',
  `bj_rgt_seqno` decimal(5,0) NOT NULL COMMENT '대상등록순번',
  `bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_fndli_req_bj_bsns_00` (`rcp_sno`,`bj_rgt_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='금융거래정보요청대상업무';
