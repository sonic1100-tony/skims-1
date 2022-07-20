--
-- Table structure for table `fin_rtm_slr_dt`
--

DROP TABLE IF EXISTS `fin_rtm_slr_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_rtm_slr_dt` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `cls_da_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감자료종류코드',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `rr_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '귀속기관코드',
  `act_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '회계기관코드',
  `rtm_slamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '퇴직급여금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`cls_da_kndcd`,`cr_seqno`,`rr_orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='퇴직급여상세';
