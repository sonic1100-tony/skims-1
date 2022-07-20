--
-- Table structure for table `ins_inscp_cl_crinf_dt_inq`
--

DROP TABLE IF EXISTS `ins_inscp_cl_crinf_dt_inq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_inscp_cl_crinf_dt_inq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tlm_opndt` date NOT NULL COMMENT '전문개시일자',
  `tlm_admno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '전문관리번호',
  `tlm_ts_seqno` decimal(5,0) NOT NULL COMMENT '전문전송순번',
  `tlm_dt_seqno` decimal(5,0) NOT NULL COMMENT '전문상세순번',
  `bsnsr_flgcd` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업권구분코드',
  `cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회사코드',
  `crdis_plyno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원증권번호',
  `crt_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자성명',
  `inq_bj_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조회대상관계코드',
  `gdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품명',
  `crdis_cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원계약상태코드',
  `crdis_ins_strdt` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원보험시작일자',
  `crdis_ins_nddt` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원보험종료일자',
  `pym_prm` decimal(17,2) DEFAULT NULL COMMENT '납입보험료',
  `pym_cyccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입주기코드',
  `pym_trm` decimal(3,0) DEFAULT NULL COMMENT '납입기간',
  `crdis_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원담보코드',
  `crdis_cvrnm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원담보명',
  `crdis_cvr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원담보상태코드',
  `crdis_cvamt` decimal(18,5) DEFAULT NULL COMMENT '신용정보원담보금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_inscp_cl_crinf_dt_inq_00` (`tlm_opndt`,`tlm_admno`,`tlm_ts_seqno`,`tlm_dt_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=614 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험사별계약정보상세조회';
