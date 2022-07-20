--
-- Table structure for table `fin_badbt_st`
--

DROP TABLE IF EXISTS `fin_badbt_st`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_badbt_st` (
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `badbt_stncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '대손기준코드',
  `badbt_st_str_mc` decimal(7,0) DEFAULT NULL COMMENT '대손기준시작월수',
  `badbt_st_nd_mc` decimal(7,0) DEFAULT NULL COMMENT '대손기준종료월수',
  `lq_perd_mc` decimal(5,0) DEFAULT NULL COMMENT '청산기한월수',
  `badbt_escd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '대손설정코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ntacc_cd`,`badbt_stncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='대손기준';
