--
-- Table structure for table `lse_lsetm_re_inscc_cls`
--

DROP TABLE IF EXISTS `lse_lsetm_re_inscc_cls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_lsetm_re_inscc_cls` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `cls_bjno` varchar(40) COLLATE utf8mb4_bin NOT NULL COMMENT '마감대상번호',
  `clsdt` date NOT NULL COMMENT '마감일자',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `ce_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집기관코드',
  `ce_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집직원번호',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `chrps_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자기관코드',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `chr_admr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당관리자기관코드',
  `chr_admr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당관리자직원번호',
  `t_py_rfamt` decimal(15,0) DEFAULT NULL COMMENT '총지급준비금액',
  `t_nvcs_rfamt` decimal(15,0) DEFAULT NULL COMMENT '총조사비용준비금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_lsetm_re_inscc_cls_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`,`cls_bjno`,`clsdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손사재보험건별마감';
