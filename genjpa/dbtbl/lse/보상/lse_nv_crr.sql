--
-- Table structure for table `lse_nv_crr`
--

DROP TABLE IF EXISTS `lse_nv_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_nv_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `nv_crr_seqno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '조사이력순번',
  `nvdt` date NOT NULL COMMENT '조사일자',
  `nv_mtdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '조사방법코드',
  `chr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당직원번호',
  `nv_cn` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '조사내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_nv_crr_00` (`rcp_yymm`,`rcp_nv_seqno`,`nv_crr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='조사이력';
