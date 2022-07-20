--
-- Table structure for table `ins_crdis_crdif_dt`
--

DROP TABLE IF EXISTS `ins_crdis_crdif_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_crdis_crdif_dt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tlm_opndt` date NOT NULL COMMENT '전문개시일자',
  `tlm_admno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '전문관리번호',
  `tlm_ts_seqno` decimal(5,0) NOT NULL COMMENT '전문전송순번',
  `dt_seqno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '상세순번',
  `crdis_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원담보코드',
  `is_ct` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입건수',
  `isamt` decimal(17,2) DEFAULT NULL COMMENT '가입금액',
  `rdch_cr_dubt_ct` decimal(5,0) DEFAULT NULL COMMENT '승환계약의심건수',
  `kcd_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'KCD코드',
  `kcd_clmct` decimal(5,0) DEFAULT NULL COMMENT 'KCD사고건수',
  `kcd_pyct` decimal(5,0) DEFAULT NULL COMMENT 'KCD지급건수',
  `kcd_pyamt` decimal(15,0) DEFAULT NULL COMMENT 'KCD지급금액',
  `kcd_hsp_days` decimal(5,0) DEFAULT NULL COMMENT 'KCD입원일수',
  `kcd_hsp_ct` decimal(5,0) DEFAULT NULL COMMENT 'KCD입원횟수',
  `kcd_otp_ct` decimal(5,0) DEFAULT NULL COMMENT 'KCD통원횟수',
  `kcd_dgn_ct` decimal(5,0) DEFAULT NULL COMMENT 'KCD진단건수',
  `kcd_obs_ct` decimal(5,0) DEFAULT NULL COMMENT 'KCD장해건수',
  `kcd_opct` decimal(5,0) DEFAULT NULL COMMENT 'KCD수술건수',
  `fnl_clmdt` date DEFAULT NULL COMMENT '최종사고일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_crdis_crdif_dt_00` (`tlm_opndt`,`tlm_admno`,`tlm_ts_seqno`,`dt_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=1791 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='신용정보원신용정보상세';
