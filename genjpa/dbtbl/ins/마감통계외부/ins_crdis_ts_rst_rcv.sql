--
-- Table structure for table `ins_crdis_ts_rst_rcv`
--

DROP TABLE IF EXISTS `ins_crdis_ts_rst_rcv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_crdis_ts_rst_rcv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tlm_opndt` date NOT NULL COMMENT '전문개시일자',
  `stdt` date NOT NULL COMMENT '기준일자',
  `dl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래구분코드',
  `da_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자료구분코드',
  `dl_sno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '거래일련번호',
  `crdis_anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원응답코드',
  `tlm_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전문내용',
  `er_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_crdis_ts_rst_rcv_00` (`tlm_opndt`,`stdt`,`dl_flgcd`,`da_flgcd`,`dl_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='신용정보원전송결과수신';
