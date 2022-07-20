--
-- Table structure for table `ins_cr_nc_mtt`
--

DROP TABLE IF EXISTS `ins_cr_nc_mtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_nc_mtt` (
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `relpc_seqno` decimal(10,0) NOT NULL COMMENT '관계자순번',
  `nc_mtt_itno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '알릴사항항목번호',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `qust_seqno` decimal(5,0) NOT NULL COMMENT '질문순번',
  `qust_sbd_seqno` decimal(5,0) NOT NULL COMMENT '질문하위순번',
  `rpl_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '답변내용',
  `et_dt_rpl` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타세부답변',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`plyno`,`relpc_seqno`,`nc_mtt_itno`,`nds_ap_str_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약알릴사항';
