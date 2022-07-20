--
-- Table structure for table `fin_crptx_pd_rstx_st`
--

DROP TABLE IF EXISTS `fin_crptx_pd_rstx_st`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_crptx_pd_rstx_st` (
  `tx_stdt` date NOT NULL COMMENT '과세기준일자',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `empct` decimal(7,0) NOT NULL COMMENT '종업원수',
  `ttare` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '연면적',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`tx_stdt`,`orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='법인세할주민세기준';
