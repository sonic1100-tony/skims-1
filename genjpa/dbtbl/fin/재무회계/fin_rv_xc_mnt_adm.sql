--
-- Table structure for table `fin_rv_xc_mnt_adm`
--

DROP TABLE IF EXISTS `fin_rv_xc_mnt_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_rv_xc_mnt_adm` (
  `rvdt` date NOT NULL COMMENT '수납일자',
  `rv_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '수납기관코드',
  `rv_xcno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '수납정산번호',
  `rv_ordr` decimal(5,0) NOT NULL COMMENT '수납순차',
  `mnt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '금종구분코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관코드',
  `dh_stfcd` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원코드',
  `dpdt` date DEFAULT NULL COMMENT '입금일자',
  `mntno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금종번호',
  `dprnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금자명',
  `mnt_dt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금종세부구분코드',
  `amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '금액',
  `crrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자명',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `ccl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '취소여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rvdt`,`rv_orgcd`,`rv_xcno`,`rv_ordr`,`mnt_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='수납정산금종관리';
