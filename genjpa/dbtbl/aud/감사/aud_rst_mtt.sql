--
-- Table structure for table `aud_rst_mtt`
--

DROP TABLE IF EXISTS `aud_rst_mtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_rst_mtt` (
  `adt_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '감사년도',
  `adt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감사구분코드',
  `adtno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '감사번호',
  `adt_indi_seqno` decimal(5,0) NOT NULL COMMENT '감사지적순번',
  `adt_seqno` decimal(5,0) NOT NULL COMMENT '감사순번',
  `rst_bj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제재대상구분코드',
  `rst_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제재직원번호',
  `rst_thtm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제재당시기관코드',
  `rst_thtm_dtynm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제재당시직책명',
  `rst_tp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제재유형구분코드',
  `rst_mntct` decimal(5,0) DEFAULT NULL COMMENT '제재개월수',
  `rst_rgt_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제재등록내용',
  `rst_amt` decimal(15,0) DEFAULT NULL COMMENT '제재금액',
  `dcp_tp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '징계유형구분코드',
  `dcp_mntct` decimal(5,0) DEFAULT NULL COMMENT '징계개월수',
  `dcp_dt` date DEFAULT NULL COMMENT '징계일자',
  `rgt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`adt_yr`,`adt_flgcd`,`adtno`,`adt_indi_seqno`,`adt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='제재사항';
