--
-- Table structure for table `ccm_py_dm_nvcs_adm`
--

DROP TABLE IF EXISTS `ccm_py_dm_nvcs_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_py_dm_nvcs_adm` (
  `adm_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '관리년월',
  `adm_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '관리일련번호',
  `py_bj_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '지급대상직원번호',
  `rr_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '귀속기관코드',
  `rr_tm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '귀속팀기관코드',
  `py_dm_nvcs_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지급손해조사비항목코드',
  `py_dm_nvcs_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지급손해조사비상태코드',
  `ds_dthms` datetime DEFAULT NULL COMMENT '결정일시',
  `crdt` date NOT NULL COMMENT '발생일자',
  `rqamt` decimal(15,0) NOT NULL COMMENT '신청금액',
  `rqaps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '신청자직원번호',
  `rq_dthms` datetime NOT NULL COMMENT '신청일시',
  `pylnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처명',
  `pypl_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처식별번호',
  `bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행코드',
  `actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호',
  `dpsnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주명',
  `dpsr_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주식별번호',
  `cmp_py_rltno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상지급연계번호',
  `nots_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요내용',
  `are_rnk_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지역급수구분코드',
  `hndph_bdtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '핸드폰직무코드',
  `apamt` decimal(15,0) DEFAULT NULL COMMENT '승인금액',
  `pypl_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처종류코드',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해서열',
  `ex_rcv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환입환수구분코드',
  `ex_itcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환입항목코드',
  `pypl_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처고객번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`adm_yymm`,`adm_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지급손해조사비관리';
