--
-- Table structure for table `ins_rins_dcu`
--

DROP TABLE IF EXISTS `ins_rins_dcu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rins_dcu` (
  `rins_dcu_no` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험문서번호',
  `wrtdt` date NOT NULL COMMENT '작성일자',
  `wrter_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '작성자직원번호',
  `rins_dcu_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험문서종류코드',
  `rins_dcu_bsns_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험문서업무유형코드',
  `rins_dcu_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험문서등급코드',
  `dcu_titl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문서제목',
  `dcu_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문서내용',
  `dcu_cons_trm` decimal(2,0) DEFAULT NULL COMMENT '문서보존기간',
  `elec_seal_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전자날인여부',
  `otcm_dcu_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타사문서여부',
  `otcm_dcu_no` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타사문서번호',
  `intn_inot_dcu_no` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대외내외문서번호',
  `adx_dcu_cplt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부문서완료여부',
  `brk_rinsr_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '브로커재보험자유형코드',
  `rins_dcu_prg_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험문서진행상태코드',
  `dcu_ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문서삭제여부',
  `mlt_dl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '다중처리여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rins_dcu_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보험문서';
