--
-- Table structure for table `cus_crdcr_auth_adm`
--

DROP TABLE IF EXISTS `cus_crdcr_auth_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_crdcr_auth_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `snddt` date NOT NULL COMMENT '발송일자',
  `snd_hms` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '발송시간',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `crdcr_auth_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용카드인증업무구분코드',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `crdno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드번호',
  `stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원번호',
  `orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관코드',
  `ppr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위기관코드',
  `nhgst_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차상위기관코드',
  `crdcr_ap_tlm_anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용카드승인전문응답코드',
  `crdcr_ap_tlm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용카드승인전문구분코드',
  `crdcr_ap_anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용카드승인응답코드',
  `fnl_aryn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종승인여부',
  `rst_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결과내용',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_crdcr_auth_adm_00` (`snddt`,`snd_hms`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='신용카드인증관리';
