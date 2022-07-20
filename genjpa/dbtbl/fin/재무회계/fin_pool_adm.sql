--
-- Table structure for table `fin_pool_adm`
--

DROP TABLE IF EXISTS `fin_pool_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_pool_adm` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `cls_da_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감자료종류코드',
  `pool_org_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'POOL기관구분코드',
  `dbcr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '차대구분코드',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `act_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '회계기관코드',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `woncr_poamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화계상금액',
  `fc_poamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화계상금액',
  `ap_xcrt` decimal(12,6) NOT NULL DEFAULT '1.000000' COMMENT '적용환율',
  `ppdt` date NOT NULL COMMENT '계상일자',
  `lq_dltcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청산상대처코드',
  `pool_rn_asmt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'POOL원수지정여부',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `dl_seqno` decimal(5,0) DEFAULT NULL COMMENT '처리순번',
  `pvl_rst_tfdt` date DEFAULT NULL COMMENT '계상결과이체일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='POOL관리';
