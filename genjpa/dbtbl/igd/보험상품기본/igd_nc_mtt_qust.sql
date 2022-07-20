--
-- Table structure for table `igd_nc_mtt_qust`
--

DROP TABLE IF EXISTS `igd_nc_mtt_qust`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_nc_mtt_qust` (
  `nc_mtt_qust_typcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '알릴사항질문타입코드',
  `nc_mtt_itno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '알릴사항항목번호',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `nc_mtt_itnm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '알릴사항항목명',
  `qust_seqno` decimal(5,0) NOT NULL COMMENT '질문순번',
  `qust_sbd_seqno` decimal(5,0) NOT NULL COMMENT '질문하위순번',
  `nc_mtt_it_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '알릴사항항목구분코드',
  `sbd_qust_apcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '하위질문적용코드',
  `dgn_cn_inp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진단내용입력구분코드',
  `nrdps_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자구분코드',
  `nc_mtt_qust_nm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '알릴사항질문명',
  `nc_mtt_qust_nick_nm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '알릴사항질문별칭명',
  `qust_rpl_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질문답변유형코드',
  `nc_mtt_rpl_unt_ounm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '알릴사항답변단위출력명',
  `qust_essn_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질문필수구분코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`nc_mtt_qust_typcd`,`nc_mtt_itno`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='알릴사항질문';
