--
-- Table structure for table `ins_tf_wrk_dl_crst`
--

DROP TABLE IF EXISTS `ins_tf_wrk_dl_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_tf_wrk_dl_crst` (
  `stdt` date NOT NULL COMMENT '기준일자',
  `tf_wrk_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이체작업구분코드',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `tf_1_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체1년월',
  `tf_1_daycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체1일코드',
  `tf_2_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체2년월',
  `tf_2_daycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체2일코드',
  `tf_dl_metcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체처리방식코드',
  `auto_tf_cg_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동이체요금종류코드',
  `dh_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급회사코드',
  `tf_wrk_rkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체작업단계코드',
  `wrk_exec_rst_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '작업수행결과유형코드',
  `wrk_exec_rst_ct` decimal(15,0) DEFAULT NULL COMMENT '작업수행결과건수',
  `wrk_exec_rst_amt` decimal(15,0) DEFAULT NULL COMMENT '작업수행결과금액',
  `cnf_mtdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '확인방법코드',
  `cnf_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '확인여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`stdt`,`tf_wrk_flgcd`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='이체작업처리현황';
