import 'package:datawarehousingjob_app/custom_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Data Warehouse Engineer / ETL Developer / Data Engineer",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About the Role",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 16),
              Text(
                "We are looking for a skilled professional with hands-on experience in Data Warehousing technologies to design, build, and maintain large-scale data solutions. The ideal candidate should have strong knowledge of ETL/ELT processes, data modeling, and experience with modern cloud-based or traditional data warehouse platforms.",
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              const SizedBox(height: 16),
              Text(
                "Key Responsibilities",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              getBulletedList(
                "Design, develop, and maintain data warehouse architecture and ETL/ELT pipelines.",
              ),
              const SizedBox(height: 8),
              getBulletedList(
                "Work with stakeholders to gather business requirements and translate them into data models.",
              ),
              const SizedBox(height: 8),
              getBulletedList(
                "Integrate data from multiple sources (databases, APIs, flat files, cloud systems).",
              ),
              const SizedBox(height: 8),
              getBulletedList(
                "Optimize data warehouse performance, scalability, and reliability.",
              ),
              const SizedBox(height: 8),
              getBulletedList(
                "Ensure data accuracy, quality, and security across platforms.",
              ),
              const SizedBox(height: 8),
              getBulletedList(
                "Collaborate with BI/reporting teams to deliver dashboards, analytics, and insights.",
              ),
              const SizedBox(height: 8),
              getBulletedList(
                "Stay updated with emerging data warehouse, cloud, and big data technologies.",
              ),
              const SizedBox(height: 16),
              Text(
                "Required Skills & Qualifications",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              getBulletedList(
                "Bachelor’s degree in Computer Science, Information Technology, Data Engineering, or related field.",
              ),
              const SizedBox(height: 8),
              getBulletedList(
                "Hands-on experience with data warehousing technologies",
              ),
              getBulletedList("Strong expertise in ETL tools"),
              const SizedBox(height: 8),
              getBulletedList("Proficiency in SQL"),
              const SizedBox(height: 8),
              getBulletedList("Understanding of data modeling"),
              const SizedBox(height: 8),
              getBulletedList(
                "Experience with Python/Java/Scala for data processing (optional but preferred).",
              ),
              const SizedBox(height: 8),
              getBulletedList(
                "Familiarity with cloud ecosystems (AWS, Azure, GCP).",
              ),
              const SizedBox(height: 16),

              Text(
                "Preferred Skills (Good to Have)",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              getBulletedList(
                "Knowledge of big data frameworks (Hadoop, Spark).",
              ),
              const SizedBox(height: 8),
              getBulletedList(
                "Experience with data lakes & lakehouse platforms (Databricks, Delta Lake, Apache Iceberg).",
              ),
              const SizedBox(height: 8),
              getBulletedList(
                "Familiarity with BI tools (Tableau, Power BI, Looker).",
              ),
              const SizedBox(height: 8),
              getBulletedList(
                "Certifications in cloud data engineering or data warehousing.",
              ),
              const SizedBox(height: 16),

              Text(
                "What We Offer",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              getBulletedList("Competitive compensation and benefits package."),
              const SizedBox(height: 8),
              getBulletedList(
                "Opportunity to work with modern cloud data platforms.",
              ),
              const SizedBox(height: 8),
              getBulletedList(
                "Continuous learning and certifications support.",
              ),
              const SizedBox(height: 8),
              getBulletedList(
                "Collaborative work environment with data-driven projects.",
              ),
              const SizedBox(height: 16),
              Text(
                "Apply to",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "Interested candidates can send they CV to",
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    "insight.technosoft@gmail.com",
                    style: TextStyle(color: Colors.blue, fontSize: 14),
                  ),
                  SizedBox(width: 4),
                  GestureDetector(
                    onTap: () {
                      Clipboard.setData(
                        ClipboardData(text: "insight.technosoft@gmail.com"),
                      ).then((_) {
                        customSnackBar(
                          title: "Email Copied",
                          message: "insight.technosoft@gmail.com",
                        );
                      });
                    },
                    child: Icon(Icons.copy, size: 14, color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  getBulletedList(String data) {
    return Row(
      children: [
        Text(
          '\u2022',
          style: TextStyle(color: Colors.black, fontSize: 16, height: 1.55),
        ),
        SizedBox(width: 5),
        Expanded(
          child: Text(
            data,
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
