--
-- Table structure for table `lse_er_py_rcv`
--

DROP TABLE IF EXISTS `lse_er_py_rcv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_er_py_rcv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `xi_py_spc_seqno` decimal(3,0) NOT NULL COMMENT '추산지급내역순번',
  `cs_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '비용구분코드',
  `spvsn_dt_smccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감리세부소분류코드',
  `rcv_rgt_seqno` decimal(3,0) NOT NULL COMMENT '환수등록순번',
  `er_py_rcv_mtdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '오류지급환수방법코드',
  `rcamt` decimal(15,0) NOT NULL COMMENT '환수금액',
  `rcv_dt` date NOT NULL COMMENT '환수일자',
  `rcv_impr_rscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '환수불가사유코드',
  `rcv_impr_dt_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환수불가세부내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_er_py_rcv_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`,`xi_py_spc_seqno`,`cs_flgcd`,`spvsn_dt_smccd`,`rcv_rgt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='오류지급환수';
