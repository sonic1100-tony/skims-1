--
-- Table structure for table `fin_svi_ase`
--

DROP TABLE IF EXISTS `fin_svi_ase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_svi_ase` (
  `dfpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예금상대처코드',
  `svi_ase_dp_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '저축성자산예금종류코드',
  `fndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '펀드코드',
  `svi_ase_rq_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '저축성자산신청구분코드',
  `svi_ase_xt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '저축성자산연장구분코드',
  `svi_ase_is_ojccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '저축성자산가입목적코드',
  `svi_ase_is_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '저축성자산가입구분코드',
  `chr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당기관코드',
  `chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당직원번호',
  `cprcp_rqamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '협력사요청금액',
  `cprcp_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협력사고객번호',
  `fr_cprdt` date DEFAULT NULL COMMENT '최초협력일자',
  `isp_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '가입사고객번호',
  `svi_ase_isp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '저축성자산가입사구분코드',
  `is_strdt` date DEFAULT NULL COMMENT '가입시작일자',
  `is_nddt` date DEFAULT NULL COMMENT '가입종료일자',
  `isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '가입금액',
  `ntrt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '이자율',
  `byamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '매입금액',
  `by_nt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '매입이자',
  `yy_pfrt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '년수익율',
  `actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호',
  `svi_ase_ntcal_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '저축성자산이자계산방법코드',
  `svi_ase_ntcal_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '저축성자산이자계산구분코드',
  `svi_ase_nt_cyccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '저축성자산이자주기코드',
  `svi_ase_nt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '저축성자산이자구분코드',
  `svi_ase_ntrt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '저축성자산이자율구분코드',
  `cvr_offr_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보제공자성명',
  `cvr_ofamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '담보제공금액',
  `cvr_of_st` date DEFAULT NULL COMMENT '담보제공시기',
  `cvr_of_clstr` date DEFAULT NULL COMMENT '담보제공종기',
  `cvr_of_use_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보제공용도내용',
  `cvr_of_et_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보제공기타사항',
  `svi_ase_admno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '저축성자산관리번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dfpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='저축성자산';
