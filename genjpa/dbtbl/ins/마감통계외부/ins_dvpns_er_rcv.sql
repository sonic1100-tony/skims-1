--
-- Table structure for table `ins_dvpns_er_rcv`
--

DROP TABLE IF EXISTS `ins_dvpns_er_rcv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_er_rcv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `da_wrt_rcvdt` date NOT NULL COMMENT '자료작성수신일자',
  `admno` decimal(6,0) NOT NULL COMMENT '관리번호',
  `dvpns_dtyns_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원의무보험업무구분코드',
  `ercd_1` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류코드1',
  `ercd_2` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류코드2',
  `ercd_3` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류코드3',
  `erct` decimal(7,0) DEFAULT NULL COMMENT '오류건수',
  `er_da_rcvdt` date DEFAULT NULL COMMENT '오류자료수신일자',
  `ts_nbj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전송미대상여부',
  `er_da_tsdt` date DEFAULT NULL COMMENT '오류자료전송일자',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `er_dat_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류데이터구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_dvpns_er_rcv_00` (`da_wrt_rcvdt`,`admno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원오류수신';
