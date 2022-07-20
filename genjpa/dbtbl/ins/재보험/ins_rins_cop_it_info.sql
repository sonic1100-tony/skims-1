--
-- Table structure for table `ins_rins_cop_it_info`
--

DROP TABLE IF EXISTS `ins_rins_cop_it_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rins_cop_it_info` (
  `rins_crano_id` decimal(5,0) NOT NULL COMMENT '재보험계약번호ID',
  `rins_cop_it_id` decimal(5,0) NOT NULL COMMENT '재보험구성항목ID',
  `rins_cop_seqno` decimal(5,0) DEFAULT NULL COMMENT '재보험구성순번',
  `rins_atrcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험속성코드',
  `rins_optr` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험연산자',
  `rins_atrvl` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험속성값',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`rins_crano_id`,`rins_cop_it_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험재보험구성항목정보';
