--
-- Table structure for table `str_prpn_aw_cls`
--

DROP TABLE IF EXISTS `str_prpn_aw_cls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_prpn_aw_cls` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `cls_da_seqno` decimal(10,0) NOT NULL COMMENT '마감자료순번',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '취급기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원번호',
  `dh_stf_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원구분코드',
  `dh_stf_bz_atrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원영업속성코드',
  `sl_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '판매유형코드',
  `ex_rcv_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '환입환수구분코드',
  `prpn_aw` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '비례수당',
  `aw_itcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수당항목코드',
  `incm_prm_cr_seqno` decimal(5,0) DEFAULT '0' COMMENT '수입보험료발생순번',
  `cv_prm` decimal(17,2) DEFAULT '0.00' COMMENT '환산보험료',
  `rr_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '귀속기관코드',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계정과목코드',
  `gn_co_obj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일반공동물건구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`cls_da_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='비례수당마감'
