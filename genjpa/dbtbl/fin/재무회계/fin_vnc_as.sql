--
-- Table structure for table `fin_vnc_as`
--

DROP TABLE IF EXISTS `fin_vnc_as`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_vnc_as` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `as_seqno` decimal(5,0) NOT NULL COMMENT '배정순번',
  `vnccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'VAN사코드',
  `fnl_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '최종여부',
  `fnl_asdt` date NOT NULL COMMENT '최종배정일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_vnc_as_00` (`as_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='VAN사배정';
