--
-- Table structure for table `lse_xtn_pr_cr`
--

DROP TABLE IF EXISTS `lse_xtn_pr_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_xtn_pr_cr` (
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `nrdps_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자고객번호',
  `dedt` date NOT NULL COMMENT '사망일자',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `crt_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자고객번호',
  `cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약상태코드',
  `rtn_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환급대상유무',
  `ltins_xp_rtamt` decimal(15,0) DEFAULT NULL COMMENT '장기보험예상환급금액',
  `dl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리여부',
  `dl_rst_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리결과내용',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime DEFAULT NULL COMMENT '입력일시',
  `mdf_dthms` datetime DEFAULT NULL COMMENT '수정일시',
  PRIMARY KEY (`rcp_yymm`,`rcp_nv_seqno`,`plyno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='소멸예정계약';
