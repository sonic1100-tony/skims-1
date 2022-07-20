--
-- Table structure for table `str_fxqtt_index_defn`
--

DROP TABLE IF EXISTS `str_fxqtt_index_defn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_fxqtt_index_defn` (
  `inctl_fxqtt_index_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제정량지표구분코드',
  `vl_itnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '평가항목명',
  `vl_it_cn` varchar(2000) COLLATE utf8mb4_bin NOT NULL COMMENT '평가항목내용',
  `o1_vl_tp_cn` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '1차평가유형내용',
  `o1_extr_trm_cn` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '1차추출기간내용',
  `o1_inq_tp_cn` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '1차조회유형내용',
  `o2_vl_tp_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차평가유형내용',
  `o2_extr_trm_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차추출기간내용',
  `o2_inq_tp_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차조회유형내용',
  `chrps_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자성명',
  `extr_cnd_cn` varchar(2000) COLLATE utf8mb4_bin NOT NULL COMMENT '추출조건내용',
  `bjnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대상명',
  `bjps_dtnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대상자상세명',
  `chrps_rq_dt_mtt` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자요청세부사항',
  `ref_da_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고자료내용',
  `inctl_index_inq_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제지표조회구분코드',
  `inctl_index_dv_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '내부통제지표배분유형코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`inctl_fxqtt_index_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='정량지표정의';
