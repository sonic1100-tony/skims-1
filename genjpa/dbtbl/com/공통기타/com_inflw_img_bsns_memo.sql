--
-- Table structure for table `com_inflw_img_bsns_memo`
--

DROP TABLE IF EXISTS `com_inflw_img_bsns_memo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_inflw_img_bsns_memo` (
  `tot_memo_seqno` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '전체메모순번',
  `bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무구분코드',
  `img_flgno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '이미지구분번호',
  `impdg_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '중요도구분코드',
  `wrkr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '작업자직원번호',
  `mdf_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정직원번호',
  `rgtdt` date NOT NULL COMMENT '등록일자',
  `mdfdt` date DEFAULT NULL COMMENT '수정일자',
  `memo_seqno` decimal(10,0) NOT NULL COMMENT '메모순번',
  `memo_cn` varchar(4000) COLLATE utf8mb4_bin NOT NULL COMMENT '메모내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`tot_memo_seqno`),
  KEY `idx_com_inflw_img_bsns_memo_10` (`img_flgno`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='유입이미지업무메모';
