--
-- Table structure for table `fin_cls_da_dl`
--

DROP TABLE IF EXISTS `fin_cls_da_dl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_cls_da_dl` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `cls_da_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감자료종류코드',
  `dl_seqno` decimal(5,0) NOT NULL COMMENT '처리순번',
  `reqdt` date NOT NULL COMMENT '요청일자',
  `rqfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요청직원번호',
  `ap_retn_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인반려구분코드',
  `dldt` date DEFAULT NULL COMMENT '처리일자',
  `dl_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리직원번호',
  `cls_da_dl_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마감자료처리상태코드',
  `retn_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반려사유',
  `inp_scr_id` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입력화면ID',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`cls_da_kndcd`,`dl_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='마감자료처리';
