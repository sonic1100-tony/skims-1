--
-- Table structure for table `lse_exm_itm`
--

DROP TABLE IF EXISTS `lse_exm_itm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_exm_itm` (
  `exm_ope_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '시험시행년월',
  `exm_seqno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '시험순번',
  `exm_itm_seqno` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '시험과목순번',
  `lsetm_bsns_exm_sbjcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사업무시험과목코드',
  `itm_dtnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '과목세부명',
  `itm_int_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '과목소개내용',
  `exm_str_dthms` datetime DEFAULT NULL COMMENT '시험시작일시',
  `exm_nd_dthms` datetime DEFAULT NULL COMMENT '시험종료일시',
  `qust_wrter_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질문작성자명',
  `qust_wrter_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질문작성자직원번호',
  `rst_inp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결과입력여부',
  `tkxm_bjps_num` decimal(7,0) DEFAULT NULL COMMENT '응시대상자수',
  `quf_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자격대상여부',
  `slctp_qust_num` decimal(5,0) DEFAULT NULL COMMENT '선택형질문수',
  `sjtv_qust_num` decimal(5,0) DEFAULT NULL COMMENT '주관식질문수',
  `slctp_qust_cl_poct` decimal(10,2) DEFAULT NULL COMMENT '선택형질문별점수',
  `sjtv_qust_cl_poct` decimal(10,2) DEFAULT NULL COMMENT '주관식질문별점수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`exm_ope_yymm`,`exm_seqno`,`exm_itm_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='시험과목';
