--
-- Table structure for table `lse_self_chamt_rcv_crr`
--

DROP TABLE IF EXISTS `lse_self_chamt_rcv_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_self_chamt_rcv_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `st_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년도',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `crr_seqno` decimal(5,0) NOT NULL COMMENT '이력순번',
  `rcamt` decimal(15,0) DEFAULT NULL COMMENT '환수금액',
  `acm_rcamt` decimal(15,0) DEFAULT NULL COMMENT '누적환수금액',
  `rcv_crst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환수현황구분코드',
  `nv_requ_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조사의뢰여부',
  `befo_ntclt_snd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사전안내장발송여부',
  `chrps_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자기관코드',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `crr_cr_dthms` datetime DEFAULT NULL COMMENT '이력발생일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_self_chamt_rcv_crr_00` (`ctmno`,`st_yr`,`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`crr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='본인부담금환수이력';
