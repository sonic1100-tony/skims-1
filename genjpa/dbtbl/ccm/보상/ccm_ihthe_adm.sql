--
-- Table structure for table `ccm_ihthe_adm`
--

DROP TABLE IF EXISTS `ccm_ihthe_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_ihthe_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `ihthe_seqno` decimal(3,0) NOT NULL COMMENT '상속인순번',
  `ihthe_nm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상속인성명',
  `ihthe_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상속인주민번호',
  `ihthe_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상속인전화지역번호',
  `ihthe_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상속인전화국번',
  `ihthe_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상속인전화일련번호',
  `relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관계코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_ihthe_adm_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`ihthe_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상속인관리';
