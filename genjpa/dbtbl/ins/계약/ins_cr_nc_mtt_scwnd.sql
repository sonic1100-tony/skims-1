--
-- Table structure for table `ins_cr_nc_mtt_scwnd`
--

DROP TABLE IF EXISTS `ins_cr_nc_mtt_scwnd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_nc_mtt_scwnd` (
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `relpc_seqno` decimal(10,0) NOT NULL COMMENT '관계자순번',
  `nc_mtt_itno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '알릴사항항목번호',
  `scwnd_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상병코드',
  `qust_id` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '질문ID',
  `rpl_id` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '답변ID',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `rpl_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '답변내용',
  `et_dt_rpl` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타세부답변',
  `dgncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진단코드',
  `dgncd_sno` decimal(5,0) DEFAULT NULL COMMENT '진단코드일련번호',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`plyno`,`relpc_seqno`,`nc_mtt_itno`,`nds_ap_str_dthms`,`scwnd_cd`,`qust_id`,`rpl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약알릴사항상병';
