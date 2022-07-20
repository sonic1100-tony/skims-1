--
-- Table structure for table `lse_stf_inv`
--

DROP TABLE IF EXISTS `lse_stf_inv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_stf_inv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `cmp_stf_cns_seqno` decimal(3,0) NOT NULL COMMENT '보상직원상담순번',
  `inv_da_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '면담자료상태코드',
  `inv_pr_dthms` datetime DEFAULT NULL COMMENT '면담예정일시',
  `inv_rq_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면담요청내용',
  `inv_rq_dthms` datetime DEFAULT NULL COMMENT '면담요청일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_stf_inv_00` (`stfno`,`cmp_stf_cns_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='직원면담';
