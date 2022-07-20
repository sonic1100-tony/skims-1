--
-- Table structure for table `ins_pl_nc_mtt_scwnd`
--

DROP TABLE IF EXISTS `ins_pl_nc_mtt_scwnd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_nc_mtt_scwnd` (
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `relpc_seqno` decimal(10,0) NOT NULL COMMENT '관계자순번',
  `nc_mtt_itno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '알릴사항항목번호',
  `scwnd_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상병코드',
  `qust_id` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '질문ID',
  `rpl_id` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '답변ID',
  `rpl_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '답변내용',
  `et_dt_rpl` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타세부답변',
  `dgncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진단코드',
  `dgncd_sno` decimal(5,0) DEFAULT NULL COMMENT '진단코드일련번호',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`plno`,`cgaf_ch_seqno`,`relpc_seqno`,`nc_mtt_itno`,`scwnd_cd`,`qust_id`,`rpl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계알릴사항상병';
