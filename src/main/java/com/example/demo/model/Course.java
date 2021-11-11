package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Course {
	    
	    @Id
	    private int cid;
        private String cname;
        private String ctech;
        private String cduration;
        private String cdescription;
        private String ccontent;
		public int getCid() {
			return cid;
		}
		public void setCid(int cid) {
			this.cid = cid;
		}
		public String getCname() {
			return cname;
		}
		public void setCname(String cname) {
			this.cname = cname;
		}
		public String getCtech() {
			return ctech;
		}
		public void setCtech(String ctech) {
			this.ctech = ctech;
		}
		public String getCduration() {
			return cduration;
		}
		public void setCduration(String cduration) {
			this.cduration = cduration;
		}
		public String getCdescription() {
			return cdescription;
		}
		public void setCdescription(String cdescription) {
			this.cdescription = cdescription;
		}
		public String getCcontent() {
			return ccontent;
		}
		public void setCcontent(String ccontent) {
			this.ccontent = ccontent;
		}
		@Override
		public String toString() {
			return "Course [cid=" + cid + ", cname=" + cname + ", ctech=" + ctech + ", cduration=" + cduration
					+ ", cdescription=" + cdescription + ", cdate=" + ccontent + "]";
		}
       
        
		
		
        
}
