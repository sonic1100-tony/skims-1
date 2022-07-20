--
-- Table structure for table `ins_crins_cc_lmit_ch_rq`
--

DROP TABLE IF EXISTS `ins_crins_cc_lmit_ch_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_crins_cc_lmit_ch_rq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `ins_itm_smccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목소분류코드',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `catcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '차종코드',
  `gn_co_obj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일반공동물건구분코드',
  `nrdps_dscno_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자식별번호구분코드',
  `plcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '플랜코드',
  `ch_rq_seqno` decimal(5,0) NOT NULL COMMENT '변경요청순번',
  `ch_rq_dthms` datetime NOT NULL COMMENT '변경요청일시',
  `ch_ap_stdt` date NOT NULL COMMENT '변경적용기준일자',
  `pl_lmidt` date NOT NULL COMMENT '설계제한일자',
  `dmd_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요청자직원번호',
  `lmidt_ch_rq_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '제한일자변경요청상태코드',
  `ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인직원번호',
  `ap_dthms` datetime DEFAULT NULL COMMENT '승인일시',
  `ap_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인결과코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_crins_cc_lmit_ch_rq_00` (`gdcd`,`ins_itm_smccd`,`stfno`,`orgcd`,`catcd`,`gn_co_obj_flgcd`,`nrdps_dscno_flgcd`,`plcd`,`ch_rq_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차보험산출제한변경요청';
