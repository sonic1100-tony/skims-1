--
-- Table structure for table `com_jnl_log`
--

DROP TABLE IF EXISTS `com_jnl_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_jnl_log` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `api_rq_id` varchar(40) COLLATE utf8mb4_bin NOT NULL COMMENT 'API요청ID',
  `rq_dthms` datetime NOT NULL COMMENT '요청일시',
  `cntxt_typ_nm` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '컨텍스트타입명',
  `chn_typ_nm` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '채널타입명',
  `chn_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '채널구분코드',
  `dl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래구분코드',
  `scr_fnccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화면기능코드',
  `scr_id` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화면ID',
  `srvr_id` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '서버ID',
  `dmd_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자ID',
  `clnt_ip_adr` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CLIENTIP주소',
  `api_nd_hms` decimal(10,0) DEFAULT NULL COMMENT 'API소요시간',
  `dl_rst_ercd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리결과오류코드',
  `dl_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리결과코드',
  `api_rq_tlm_cn` longtext COLLATE utf8mb4_bin COMMENT 'API요청전문내용',
  `api_ans_tlm_cn` longtext COLLATE utf8mb4_bin COMMENT 'API응답전문내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='저널로그';
