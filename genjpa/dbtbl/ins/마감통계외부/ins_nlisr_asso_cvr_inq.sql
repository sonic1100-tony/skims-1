--
-- Table structure for table `ins_nlisr_asso_cvr_inq`
--

DROP TABLE IF EXISTS `ins_nlisr_asso_cvr_inq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_nlisr_asso_cvr_inq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tlm_opndt` date NOT NULL COMMENT '전문개시일자',
  `tlm_admno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '전문관리번호',
  `tlm_ts_seqno` decimal(5,0) NOT NULL COMMENT '전문전송순번',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `nlisr_asso_cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '손보협회담보코드',
  `isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '가입금액',
  `is_ct` varchar(5) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '가입건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_nlisr_asso_cvr_inq_00` (`tlm_opndt`,`tlm_admno`,`tlm_ts_seqno`,`cr_seqno`,`cvr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손보협회담보조회';
