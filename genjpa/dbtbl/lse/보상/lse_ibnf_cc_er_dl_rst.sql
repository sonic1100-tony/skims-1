--
-- Table structure for table `lse_ibnf_cc_er_dl_rst`
--

DROP TABLE IF EXISTS `lse_ibnf_cc_er_dl_rst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ibnf_cc_er_dl_rst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_er_seqno` decimal(3,0) NOT NULL COMMENT '산출오류순번',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `cr_cvrcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약담보코드',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `scr_id` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화면ID',
  `cc_er_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '산출오류내용',
  `dmd_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자직원번호',
  `rq_dthms` datetime DEFAULT NULL COMMENT '요청일시',
  `dl_rst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리결과구분코드',
  `dl_ctn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리의견',
  `dlr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리자직원번호',
  `dl_dthms` datetime DEFAULT NULL COMMENT '처리일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_ibnf_cc_er_dl_rst_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`clmps_seqno`,`plyno`,`cc_er_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험금산출오류처리결과';
