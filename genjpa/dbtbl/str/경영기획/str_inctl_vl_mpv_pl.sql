--
-- Table structure for table `str_inctl_vl_mpv_pl`
--

DROP TABLE IF EXISTS `str_inctl_vl_mpv_pl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_inctl_vl_mpv_pl` (
  `seq` decimal(10,0) NOT NULL COMMENT '회차',
  `inctl_vl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제평가구분코드',
  `inctl_vl_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제평가항목코드',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `mpv_pl_seqno` decimal(7,0) NOT NULL COMMENT '개선계획순번',
  `bj_seq` decimal(10,0) NOT NULL COMMENT '대상회차',
  `mpv_cn` varchar(2000) COLLATE utf8mb4_bin NOT NULL COMMENT '개선내용',
  `mpv_tgt_cn` varchar(2000) COLLATE utf8mb4_bin NOT NULL COMMENT '개선목표내용',
  `cut_av_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '당기실적내용',
  `lack_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부족사항',
  `inctl_exec_poct_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '내부통제이행점수구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`seq`,`inctl_vl_flgcd`,`inctl_vl_itcd`,`orgcd`,`mpv_pl_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='내부통제평가개선계획';
