--
-- Table structure for table `ins_pln_nv_rst`
--

DROP TABLE IF EXISTS `ins_pln_nv_rst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pln_nv_rst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `reqdt` date NOT NULL COMMENT '요청일자',
  `rq_hms` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '요청시간',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `pln_nv_rq_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '현장조사요청구분코드',
  `rq_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청내용',
  `apldo_insc_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청약서표기내용',
  `pln_nv_rst_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '현장조사결과내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pln_nv_rst_00` (`reqdt`,`rq_hms`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='현장조사결과';
