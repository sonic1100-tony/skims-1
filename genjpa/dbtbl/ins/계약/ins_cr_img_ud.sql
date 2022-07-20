--
-- Table structure for table `ins_cr_img_ud`
--

DROP TABLE IF EXISTS `ins_cr_img_ud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_img_ud` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `img_crt_seqno` decimal(3,0) NOT NULL COMMENT '이미지생성순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `nds_stdt` date DEFAULT NULL COMMENT '배서기준일자',
  `crt_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자식별번호',
  `nrdps_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자식별번호',
  `cr_or_chsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량/차대번호',
  `img_bsns_kyvl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지업무키값',
  `img_dcu_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지문서유형코드',
  `cr_img_ud_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동차이미지심사구분코드',
  `cr_img_ud_dt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동차이미지심사세부구분코드',
  `cvr_trtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보특약코드',
  `cvrtr_is_amtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보특약가입금액코드',
  `img_ct` decimal(7,0) DEFAULT NULL COMMENT '이미지건수',
  `no1_img_cnf_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1번이미지확인결과코드',
  `no2_img_cnf_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번이미지확인결과코드',
  `cnf_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확인직원번호',
  `cnf_rst_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확인결과내용',
  `fnl_img_cnfdt` date DEFAULT NULL COMMENT '최종이미지확인일자',
  `fnl_img_rgtdt` date DEFAULT NULL COMMENT '최종이미지등록일자',
  `img_rgt_typcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지등록타입코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cr_img_ud_00` (`plno`,`img_crt_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차이미지심사';
