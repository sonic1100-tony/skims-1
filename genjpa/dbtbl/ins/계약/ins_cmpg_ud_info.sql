--
-- Table structure for table `ins_cmpg_ud_info`
--

DROP TABLE IF EXISTS `ins_cmpg_ud_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cmpg_ud_info` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `vctr_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '벡터ID',
  `cell_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '셀ID',
  `bj_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '대상ID',
  `extdt` date NOT NULL COMMENT '추출일자',
  `ad_info_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '부가정보ID',
  `udno` varchar(13) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '심사번호',
  `ndv_ud_seqno` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '개별심사순번',
  `rqtno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의뢰직원번호',
  `requ_dthms` datetime DEFAULT NULL COMMENT '의뢰일시',
  `ud_chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사담당직원번호',
  `ud_chr_org_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사담당기관구분코드',
  `cmpg_ud_prg_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '캠페인심사진행상태코드',
  `cmpg_ud_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '캠페인심사결과코드',
  `ud_xmn_cn` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사검토내용',
  `fnl_ud_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종심사직원번호',
  `fnl_ud_cplt_dthms` datetime DEFAULT NULL COMMENT '최종심사완료일시',
  `ud_cpldt` date DEFAULT NULL COMMENT '심사완료일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cmpg_ud_info_00` (`vctr_id`,`cell_id`,`bj_id`,`extdt`,`ad_info_id`,`udno`,`ndv_ud_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='캠페인심사정보';
