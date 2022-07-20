--
-- Table structure for table `lse_condt_otcmg_obta`
--

DROP TABLE IF EXISTS `lse_condt_otcmg_obta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_condt_otcmg_obta` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `dl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래구분코드',
  `dat_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '데이터구분코드',
  `dat_sno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '데이터일련번호',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) DEFAULT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) DEFAULT NULL COMMENT '산출회차',
  `dm_seqno` decimal(5,0) DEFAULT NULL COMMENT '청구순번',
  `obta_dl_dthms` datetime DEFAULT NULL COMMENT '입수처리일시',
  `obta_dl_er_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입수처리오류내용',
  `obta_dl_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입수처리결과코드',
  `memo_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메모내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_condt_otcmg_obta_00` (`cls_yymm`,`dl_flgcd`,`dat_flgcd`,`dat_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='공동인수타사간사입수';
