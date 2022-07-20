--
-- Table structure for table `cus_ovse_stay_info`
--

DROP TABLE IF EXISTS `cus_ovse_stay_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ovse_stay_info` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `rgt_seqno` decimal(3,0) NOT NULL COMMENT '등록순번',
  `dprcn_dt` date NOT NULL COMMENT '출국일자',
  `etctr_dt` date DEFAULT NULL COMMENT '입국일자',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `ovse_stay_days` decimal(5,0) DEFAULT NULL COMMENT '해외체류일수',
  `rlpmi_pym_stop_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실손납입중지상태코드',
  `pty_rtamt` decimal(17,2) DEFAULT NULL COMMENT '추징환급금액',
  `rgtdt` date NOT NULL COMMENT '등록일자',
  `cncdt` date DEFAULT NULL COMMENT '해제일자',
  `cnc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해제여부',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_ins_ovse_stay_info_00` (`ctmno`,`dprcn_dt`,`rgt_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='해외체류정보';
