--
-- Table structure for table `fin_br_fd_rdmny_cls`
--

DROP TABLE IF EXISTS `fin_br_fd_rdmny_cls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_br_fd_rdmny_cls` (
  `stdt` date NOT NULL COMMENT '기준일자',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `rdmny_cls_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '시재마감구분코드',
  `cls_seqno` decimal(5,0) NOT NULL COMMENT '마감순번',
  `cls_cnc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감해제구분코드',
  `bfdy_cls_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전일마감잔액',
  `incr_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '증가금액',
  `rdamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '감소금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`stdt`,`orgcd`,`rdmny_cls_flgcd`,`cls_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지점자금시재마감';
