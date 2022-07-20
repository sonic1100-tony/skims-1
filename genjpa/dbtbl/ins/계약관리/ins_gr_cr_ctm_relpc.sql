--
-- Table structure for table `ins_gr_cr_ctm_relpc`
--

DROP TABLE IF EXISTS `ins_gr_cr_ctm_relpc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_gr_cr_ctm_relpc` (
  `gr_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '단체고객번호',
  `relpc_seqno` decimal(10,0) NOT NULL COMMENT '관계자순번',
  `relpc_ch_seqno` decimal(5,0) NOT NULL COMMENT '관계자변경순번',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `us_av_strdt` date NOT NULL COMMENT '사용가능시작일자',
  `us_av_nddt` date NOT NULL COMMENT '사용가능종료일자',
  `relpc_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '관계자유형코드',
  `st_relpc_seqno` decimal(10,0) NOT NULL COMMENT '기준관계자순번',
  `hngl_relnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글관계자명',
  `eng_relnm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문관계자명',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `ctm_dscno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호구분코드',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `relpc_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관계자관계코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`gr_ctmno`,`relpc_seqno`,`relpc_ch_seqno`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='단체계약고객관계자';
