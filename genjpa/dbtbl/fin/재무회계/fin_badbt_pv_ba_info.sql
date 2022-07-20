--
-- Table structure for table `fin_badbt_pv_ba_info`
--

DROP TABLE IF EXISTS `fin_badbt_pv_ba_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_badbt_pv_ba_info` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `slpdt` date DEFAULT NULL COMMENT '전표일자',
  `slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표번호',
  `cls_da_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마감자료종류코드',
  `dl_seqno` decimal(5,0) DEFAULT NULL COMMENT '처리순번',
  `ap_reqdt` date NOT NULL COMMENT '승인요청일자',
  `ap_rq_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '승인요청기관코드',
  `ap_rq_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '승인요청직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='대손충당기본정보';
