import '../../Models/job_model.dart';
import '../repositories/jobs_repository.dart';

class JobsLocalDataSourceImpl implements JobsLocalDataSource {
  @override
  Future<List<JobModel>> getJobs() async {
    // Simulating API delay
    await Future.delayed(const Duration(milliseconds: 500));

    // 50 jobs data with student-friendly tasks
    final now = DateTime.now();
    return [
      // Data Entry Jobs (10)
      JobModel(
        id: '1',
        title: 'Word Document - Typing Assignment',
        description:
            'Need someone to type a short assignment from handwritten notes into a Word document. Must be neat and follow basic formatting guidelines.',
        category: 'Data Entry',
        budget: 50.0,
        postedBy: 'Ahmed Student',
        deadline: now.add(const Duration(days: 2)),
        postedDate: now.subtract(const Duration(hours: 3)),
        requirements: [
          'Microsoft Word',
          'Good typing speed',
          'Attention to detail',
          'Basic formatting',
        ],
      ),
      JobModel(
        id: '2',
        title: 'Excel Budget Table Entry',
        description:
            'Enter monthly expenses into a simple budget table. Need basic Excel skills to organize data in columns and rows.',
        category: 'Data Entry',
        budget: 75.0,
        postedBy: 'Sarah Hassan',
        deadline: now.add(const Duration(days: 3)),
        postedDate: now.subtract(const Duration(hours: 5)),
        requirements: [
          'Microsoft Excel',
          'Data organization',
          'Basic formulas',
          'Accuracy',
        ],
      ),
      JobModel(
        id: '3',
        title: 'Spreadsheet Data Entry - Names & Prices',
        description:
            'Copy product names and prices from a catalog into a spreadsheet. Simple copy-paste work with about 100 items.',
        category: 'Data Entry',
        budget: 60.0,
        postedBy: 'Mohamed Store',
        deadline: now.add(const Duration(days: 2)),
        postedDate: now.subtract(const Duration(hours: 8)),
        requirements: [
          'Excel or Google Sheets',
          'Copy-paste skills',
          'Data accuracy',
          'Fast typing',
        ],
      ),
      JobModel(
        id: '4',
        title: 'Customer Contact List Entry',
        description:
            'Enter customer contact information into a database. Need to type names, phone numbers, and emails accurately.',
        category: 'Data Entry',
        budget: 80.0,
        postedBy: 'Small Business Owner',
        deadline: now.add(const Duration(days: 4)),
        postedDate: now.subtract(const Duration(hours: 12)),
        requirements: [
          'Excel skills',
          'Attention to detail',
          'Data validation',
          'Confidentiality',
        ],
      ),
      JobModel(
        id: '5',
        title: 'Invoice Data Entry to Excel',
        description:
            'Extract data from scanned invoices and enter into Excel sheet. About 50 invoices to process.',
        category: 'Data Entry',
        budget: 100.0,
        postedBy: 'Accounting Office',
        deadline: now.add(const Duration(days: 5)),
        postedDate: now.subtract(const Duration(days: 1)),
        requirements: [
          'Excel proficiency',
          'Number accuracy',
          'Reading scanned docs',
          'Organized work',
        ],
      ),
      JobModel(
        id: '6',
        title: 'PDF to Word Conversion',
        description:
            'Convert a 20-page PDF document to Word. Maintain formatting and structure. No images, just text.',
        category: 'Data Entry',
        budget: 85.0,
        postedBy: 'Publishing House',
        deadline: now.add(const Duration(days: 3)),
        postedDate: now.subtract(const Duration(hours: 6)),
        requirements: [
          'PDF to Word skills',
          'Formatting knowledge',
          'Accuracy',
          'Proofreading',
        ],
      ),
      JobModel(
        id: '7',
        title: 'Survey Data Entry',
        description:
            'Enter survey responses from paper forms into Google Forms. About 100 responses to input.',
        category: 'Data Entry',
        budget: 95.0,
        postedBy: 'Research Team',
        deadline: now.add(const Duration(days: 4)),
        postedDate: now.subtract(const Duration(hours: 9)),
        requirements: [
          'Google Forms',
          'Data accuracy',
          'Fast typing',
          'Attention to detail',
        ],
      ),
      JobModel(
        id: '8',
        title: 'Email List Compilation',
        description:
            'Compile an email list from business directories. Need to collect company names and email addresses.',
        category: 'Data Entry',
        budget: 110.0,
        postedBy: 'Marketing Agency',
        deadline: now.add(const Duration(days: 5)),
        postedDate: now.subtract(const Duration(hours: 14)),
        requirements: [
          'Web research',
          'Data collection',
          'Email verification',
          'Excel organization',
        ],
      ),
      JobModel(
        id: '9',
        title: 'Inventory List Entry',
        description:
            'Enter product inventory into spreadsheet. About 200 items with codes, names, and quantities.',
        category: 'Data Entry',
        budget: 115.0,
        postedBy: 'Warehouse Manager',
        deadline: now.add(const Duration(days: 4)),
        postedDate: now.subtract(const Duration(hours: 10)),
        requirements: [
          'Excel skills',
          'Data accuracy',
          'Inventory systems',
          'Organized work',
        ],
      ),
      JobModel(
        id: '10',
        title: 'Database Entry from Forms',
        description:
            'Enter registration data from paper forms into database. Need to verify and organize 150 entries.',
        category: 'Data Entry',
        budget: 105.0,
        postedBy: 'Event Coordinator',
        deadline: now.add(const Duration(days: 4)),
        postedDate: now.subtract(const Duration(hours: 8)),
        requirements: [
          'Database entry',
          'Data verification',
          'Organization',
          'Accuracy',
        ],
      ),

      // Writing & Content Jobs (15)
      JobModel(
        id: '11',
        title: 'PowerPoint Presentation from Lecture',
        description:
            'Create presentation slides from a lecture file. Need to summarize key points and add simple visuals.',
        category: 'Writing & Content',
        budget: 120.0,
        postedBy: 'University Student',
        deadline: now.add(const Duration(days: 3)),
        postedDate: now.subtract(const Duration(hours: 2)),
        requirements: [
          'PowerPoint skills',
          'Content summarization',
          'Basic design',
          'Clear formatting',
        ],
      ),
      JobModel(
        id: '12',
        title: 'Content Writing - Short Article',
        description:
            'Write a 500-word article on a given topic. Must be well-structured with introduction, body, and conclusion.',
        category: 'Writing & Content',
        budget: 150.0,
        postedBy: 'Blog Owner',
        deadline: now.add(const Duration(days: 4)),
        postedDate: now.subtract(const Duration(hours: 6)),
        requirements: [
          'Good writing skills',
          'Research ability',
          'Grammar knowledge',
          'Original content',
        ],
      ),
      JobModel(
        id: '13',
        title: 'Subject Summary - One Chapter',
        description:
            'Summarize one textbook chapter into clear, concise notes. Should be easy to study from and well-organized.',
        category: 'Writing & Content',
        budget: 90.0,
        postedBy: 'Study Group Leader',
        deadline: now.add(const Duration(days: 2)),
        postedDate: now.subtract(const Duration(hours: 10)),
        requirements: [
          'Summarization skills',
          'Subject understanding',
          'Clear writing',
          'Organized notes',
        ],
      ),
      JobModel(
        id: '14',
        title: 'Lecture Transcription to Text',
        description:
            'Type a recorded lecture into text. Audio is clear, about 30 minutes long. Need accurate transcription.',
        category: 'Writing & Content',
        budget: 110.0,
        postedBy: 'Research Assistant',
        deadline: now.add(const Duration(days: 3)),
        postedDate: now.subtract(const Duration(hours: 15)),
        requirements: [
          'Good listening skills',
          'Fast typing',
          'Accuracy',
          'Attention to detail',
        ],
      ),
      JobModel(
        id: '15',
        title: 'Product Descriptions Writing',
        description:
            'Write short descriptions for 20 products. Each description should be 2-3 sentences highlighting key features.',
        category: 'Writing & Content',
        budget: 130.0,
        postedBy: 'Online Shop',
        deadline: now.add(const Duration(days: 5)),
        postedDate: now.subtract(const Duration(days: 1)),
        requirements: [
          'Creative writing',
          'Concise descriptions',
          'Marketing language',
          'Grammar accuracy',
        ],
      ),
      JobModel(
        id: '16',
        title: 'Presentation Design - Project Proposal',
        description:
            'Create a 10-slide presentation for a project proposal. Include charts, images, and professional layout.',
        category: 'Writing & Content',
        budget: 140.0,
        postedBy: 'Project Manager',
        deadline: now.add(const Duration(days: 4)),
        postedDate: now.subtract(const Duration(hours: 3)),
        requirements: [
          'PowerPoint skills',
          'Visual design',
          'Data visualization',
          'Professional layout',
        ],
      ),
      JobModel(
        id: '17',
        title: 'Meeting Minutes Transcription',
        description:
            'Transcribe a 1-hour meeting recording. Format as professional meeting minutes with action items.',
        category: 'Writing & Content',
        budget: 130.0,
        postedBy: 'Corporate Office',
        deadline: now.add(const Duration(days: 3)),
        postedDate: now.subtract(const Duration(hours: 7)),
        requirements: [
          'Transcription skills',
          'Business writing',
          'Formatting',
          'Accuracy',
        ],
      ),
      JobModel(
        id: '18',
        title: 'Blog Post Writing - Travel Topic',
        description:
            'Write a 800-word blog post about travel tips. Should be engaging and include personal insights.',
        category: 'Writing & Content',
        budget: 180.0,
        postedBy: 'Travel Blogger',
        deadline: now.add(const Duration(days: 5)),
        postedDate: now.subtract(const Duration(hours: 11)),
        requirements: [
          'Creative writing',
          'SEO knowledge',
          'Research skills',
          'Engaging style',
        ],
      ),
      JobModel(
        id: '19',
        title: 'Study Guide Creation',
        description:
            'Create a comprehensive study guide for final exams. Organize topics, add key points and examples.',
        category: 'Writing & Content',
        budget: 160.0,
        postedBy: 'Tutoring Center',
        deadline: now.add(const Duration(days: 6)),
        postedDate: now.subtract(const Duration(hours: 16)),
        requirements: [
          'Subject knowledge',
          'Organization skills',
          'Clear explanations',
          'Visual aids',
        ],
      ),
      JobModel(
        id: '20',
        title: 'Product Review Writing',
        description:
            'Write 10 honest product reviews based on provided specifications. Each review should be 150 words.',
        category: 'Writing & Content',
        budget: 140.0,
        postedBy: 'E-commerce Platform',
        deadline: now.add(const Duration(days: 4)),
        postedDate: now.subtract(const Duration(days: 1)),
        requirements: [
          'Review writing',
          'Product analysis',
          'Persuasive writing',
          'Grammar accuracy',
        ],
      ),
      JobModel(
        id: '21',
        title: 'Presentation Slides - Training Session',
        description:
            'Create training presentation with 15 slides. Include interactive elements and clear instructions.',
        category: 'Writing & Content',
        budget: 155.0,
        postedBy: 'HR Department',
        deadline: now.add(const Duration(days: 5)),
        postedDate: now.subtract(const Duration(hours: 7)),
        requirements: [
          'PowerPoint design',
          'Training content',
          'Interactive elements',
          'Clear structure',
        ],
      ),
      JobModel(
        id: '22',
        title: 'Company Profile Writing',
        description:
            'Write a professional company profile. About 400 words covering history, services, and values.',
        category: 'Writing & Content',
        budget: 165.0,
        postedBy: 'Small Enterprise',
        deadline: now.add(const Duration(days: 5)),
        postedDate: now.subtract(const Duration(days: 1)),
        requirements: [
          'Business writing',
          'Professional tone',
          'Research skills',
          'Compelling content',
        ],
      ),
      JobModel(
        id: '23',
        title: 'FAQ Page Content Writing',
        description:
            'Write 15 FAQ questions and answers for a website. Should cover common customer inquiries.',
        category: 'Writing & Content',
        budget: 125.0,
        postedBy: 'Website Owner',
        deadline: now.add(const Duration(days: 4)),
        postedDate: now.subtract(const Duration(hours: 15)),
        requirements: [
          'Content writing',
          'Customer service',
          'Clear explanations',
          'Professional tone',
        ],
      ),
      JobModel(
        id: '24',
        title: 'Academic Paper Formatting',
        description:
            'Format a research paper according to APA style. Fix citations, references, and layout.',
        category: 'Writing & Content',
        budget: 100.0,
        postedBy: 'University Student',
        deadline: now.add(const Duration(days: 3)),
        postedDate: now.subtract(const Duration(hours: 20)),
        requirements: [
          'APA formatting',
          'Citation skills',
          'Attention to detail',
          'Academic standards',
        ],
      ),
      JobModel(
        id: '25',
        title: 'Event Report Writing',
        description:
            'Write a professional report about a university event. Include photos, attendance, and feedback.',
        category: 'Writing & Content',
        budget: 135.0,
        postedBy: 'Student Affairs',
        deadline: now.add(const Duration(days: 5)),
        postedDate: now.subtract(const Duration(days: 1)),
        requirements: [
          'Report writing',
          'Professional format',
          'Photo integration',
          'Data presentation',
        ],
      ),

      // Translation Jobs (8)
      JobModel(
        id: '26',
        title: 'Arabic to English Translation - Short Text',
        description:
            'Translate a 300-word text from Arabic to English. Business document, need professional translation.',
        category: 'Translation',
        budget: 100.0,
        postedBy: 'Company Manager',
        deadline: now.add(const Duration(days: 3)),
        postedDate: now.subtract(const Duration(hours: 4)),
        requirements: [
          'Bilingual skills',
          'Arabic & English fluency',
          'Cultural awareness',
          'Accuracy',
        ],
      ),
      JobModel(
        id: '27',
        title: 'English to Arabic Translation - Article',
        description:
            'Translate a short article from English to Arabic. Topic is technology, need accurate terminology.',
        category: 'Translation',
        budget: 120.0,
        postedBy: 'Tech Blog',
        deadline: now.add(const Duration(days: 4)),
        postedDate: now.subtract(const Duration(hours: 7)),
        requirements: [
          'Technical translation',
          'Language proficiency',
          'Subject knowledge',
          'Professional quality',
        ],
      ),
      JobModel(
        id: '28',
        title: 'Document Translation - Legal Terms',
        description:
            'Translate legal document from Arabic to English. Must understand legal terminology and maintain accuracy.',
        category: 'Translation',
        budget: 200.0,
        postedBy: 'Law Office',
        deadline: now.add(const Duration(days: 6)),
        postedDate: now.subtract(const Duration(hours: 20)),
        requirements: [
          'Legal terminology',
          'Translation accuracy',
          'Confidentiality',
          'Professional format',
        ],
      ),
      JobModel(
        id: '29',
        title: 'Website Content Translation',
        description:
            'Translate website pages from English to Arabic. About 10 pages of content, need consistent tone.',
        category: 'Translation',
        budget: 250.0,
        postedBy: 'Web Agency',
        deadline: now.add(const Duration(days: 7)),
        postedDate: now.subtract(const Duration(days: 1)),
        requirements: [
          'Web content translation',
          'Localization skills',
          'Consistent style',
          'SEO awareness',
        ],
      ),
      JobModel(
        id: '30',
        title: 'Social Media Posts Translation',
        description:
            'Translate 20 social media posts from English to Arabic. Keep the tone casual and engaging.',
        category: 'Translation',
        budget: 130.0,
        postedBy: 'Social Media Manager',
        deadline: now.add(const Duration(days: 3)),
        postedDate: now.subtract(const Duration(hours: 4)),
        requirements: [
          'Translation skills',
          'Social media tone',
          'Cultural adaptation',
          'Quick turnaround',
        ],
      ),
      JobModel(
        id: '31',
        title: 'Email Template Translation',
        description:
            'Translate business email templates from Arabic to English. Need professional business language.',
        category: 'Translation',
        budget: 110.0,
        postedBy: 'Business Owner',
        deadline: now.add(const Duration(days: 4)),
        postedDate: now.subtract(const Duration(hours: 8)),
        requirements: [
          'Business translation',
          'Email etiquette',
          'Professional tone',
          'Accuracy',
        ],
      ),
      JobModel(
        id: '32',
        title: 'Product Manual Translation',
        description:
            'Translate a technical product manual from English to Arabic. About 15 pages with diagrams.',
        category: 'Translation',
        budget: 220.0,
        postedBy: 'Electronics Company',
        deadline: now.add(const Duration(days: 7)),
        postedDate: now.subtract(const Duration(days: 1)),
        requirements: [
          'Technical translation',
          'Manual formatting',
          'Diagram labels',
          'Quality assurance',
        ],
      ),
      JobModel(
        id: '33',
        title: 'Subtitle Translation for Video',
        description:
            'Translate English subtitles to Arabic for a 10-minute educational video. Timing already set.',
        category: 'Translation',
        budget: 145.0,
        postedBy: 'Content Creator',
        deadline: now.add(const Duration(days: 4)),
        postedDate: now.subtract(const Duration(hours: 19)),
        requirements: [
          'Subtitle translation',
          'Timing sync',
          'Cultural context',
          'Subtitle format',
        ],
      ),

      // Graphic Design Jobs (10)
      JobModel(
        id: '34',
        title: 'Simple Certificate Design - Canva',
        description:
            'Design a simple certificate of appreciation using Canva. Need to look professional and include specific text.',
        category: 'Graphic Design',
        budget: 70.0,
        postedBy: 'Event Organizer',
        deadline: now.add(const Duration(days: 2)),
        postedDate: now.subtract(const Duration(hours: 5)),
        requirements: [
          'Canva experience',
          'Basic design sense',
          'Typography skills',
          'PDF export',
        ],
      ),
      JobModel(
        id: '35',
        title: 'Social Media Post Design',
        description:
            'Create 5 Instagram posts using Canva templates. Need to match brand colors and add provided text.',
        category: 'Graphic Design',
        budget: 100.0,
        postedBy: 'Small Business',
        deadline: now.add(const Duration(days: 3)),
        postedDate: now.subtract(const Duration(hours: 8)),
        requirements: [
          'Canva skills',
          'Social media formats',
          'Color matching',
          'Quick turnaround',
        ],
      ),
      JobModel(
        id: '36',
        title: 'Flyer Design for Event',
        description:
            'Design a promotional flyer for a university event. Should be eye-catching and include all event details.',
        category: 'Graphic Design',
        budget: 120.0,
        postedBy: 'Student Council',
        deadline: now.add(const Duration(days: 4)),
        postedDate: now.subtract(const Duration(hours: 12)),
        requirements: [
          'Design software',
          'Layout skills',
          'Print-ready format',
          'Creative thinking',
        ],
      ),
      JobModel(
        id: '37',
        title: 'Business Card Design',
        description:
            'Design a professional business card with logo and contact info. Need both sides designed.',
        category: 'Graphic Design',
        budget: 80.0,
        postedBy: 'Freelancer',
        deadline: now.add(const Duration(days: 3)),
        postedDate: now.subtract(const Duration(hours: 18)),
        requirements: [
          'Print design',
          'Standard dimensions',
          'Professional look',
          'Vector format',
        ],
      ),
      JobModel(
        id: '38',
        title: 'Logo Enhancement - Simple Edit',
        description:
            'Enhance an existing logo by adjusting colors and adding text. Simple modifications only.',
        category: 'Graphic Design',
        budget: 90.0,
        postedBy: 'Startup Owner',
        deadline: now.add(const Duration(days: 3)),
        postedDate: now.subtract(const Duration(hours: 5)),
        requirements: [
          'Logo editing',
          'Color theory',
          'Vector software',
          'Fast delivery',
        ],
      ),
      JobModel(
        id: '39',
        title: 'Menu Design for Restaurant',
        description:
            'Design a simple menu card using Canva. Include food items, prices, and restaurant branding.',
        category: 'Graphic Design',
        budget: 110.0,
        postedBy: 'Coffee Shop',
        deadline: now.add(const Duration(days: 4)),
        postedDate: now.subtract(const Duration(hours: 9)),
        requirements: [
          'Canva or design tool',
          'Menu layout',
          'Typography',
          'Print format',
        ],
      ),
      JobModel(
        id: '40',
        title: 'Infographic Design - Statistics',
        description:
            'Create an infographic presenting survey statistics. Should be visually appealing and easy to understand.',
        category: 'Graphic Design',
        budget: 150.0,
        postedBy: 'Data Analyst',
        deadline: now.add(const Duration(days: 5)),
        postedDate: now.subtract(const Duration(hours: 13)),
        requirements: [
          'Infographic design',
          'Data visualization',
          'Color schemes',
          'Clear layout',
        ],
      ),
      JobModel(
        id: '41',
        title: 'Event Banner Design',
        description:
            'Design a banner for a charity event. Size: 2m x 1m. Need print-ready file with high resolution.',
        category: 'Graphic Design',
        budget: 170.0,
        postedBy: 'NGO Coordinator',
        deadline: now.add(const Duration(days: 6)),
        postedDate: now.subtract(const Duration(hours: 18)),
        requirements: [
          'Banner design',
          'High resolution',
          'Print specifications',
          'Brand alignment',
        ],
      ),
      JobModel(
        id: '42',
        title: 'Poster Design for Workshop',
        description:
            'Design an A3 poster promoting a coding workshop. Include date, time, and registration details.',
        category: 'Graphic Design',
        budget: 95.0,
        postedBy: 'Tech Community',
        deadline: now.add(const Duration(days: 3)),
        postedDate: now.subtract(const Duration(hours: 14)),
        requirements: [
          'Poster design',
          'Visual hierarchy',
          'Tech theme',
          'Print quality',
        ],
      ),
      JobModel(
        id: '43',
        title: 'Social Media Graphics Pack',
        description:
            'Create 10 matching social media graphics for Instagram and Facebook. Brand colors provided.',
        category: 'Graphic Design',
        budget: 185.0,
        postedBy: 'Digital Agency',
        deadline: now.add(const Duration(days: 6)),
        postedDate: now.subtract(const Duration(hours: 11)),
        requirements: [
          'Social media design',
          'Brand consistency',
          'Multiple formats',
          'Quick delivery',
        ],
      ),

      // Online Research Jobs (7)
      JobModel(
        id: '44',
        title: 'Research - Finding References for Topic',
        description:
            'Find 10 reliable academic references for a research paper on environmental science. Need proper citations.',
        category: 'Online Research',
        budget: 90.0,
        postedBy: 'Graduate Student',
        deadline: now.add(const Duration(days: 3)),
        postedDate: now.subtract(const Duration(hours: 4)),
        requirements: [
          'Research skills',
          'Academic sources',
          'Citation formatting',
          'Source evaluation',
        ],
      ),
      JobModel(
        id: '45',
        title: 'Market Research - Competitor Analysis',
        description:
            'Research 5 competitors in the food delivery market. Gather pricing, services, and customer reviews.',
        category: 'Online Research',
        budget: 150.0,
        postedBy: 'Startup Founder',
        deadline: now.add(const Duration(days: 5)),
        postedDate: now.subtract(const Duration(hours: 10)),
        requirements: [
          'Internet research',
          'Data collection',
          'Analysis skills',
          'Report writing',
        ],
      ),
      JobModel(
        id: '46',
        title: 'Literature Review Research',
        description:
            'Collect and summarize research papers on artificial intelligence. Need 15 recent papers with summaries.',
        category: 'Online Research',
        budget: 200.0,
        postedBy: 'PhD Candidate',
        deadline: now.add(const Duration(days: 7)),
        postedDate: now.subtract(const Duration(days: 1)),
        requirements: [
          'Academic research',
          'Summarization',
          'Critical reading',
          'Organization',
        ],
      ),
      JobModel(
        id: '47',
        title: 'Product Research for E-commerce',
        description:
            'Research trending products for online store. Find prices, suppliers, and market demand data.',
        category: 'Online Research',
        budget: 120.0,
        postedBy: 'E-commerce Owner',
        deadline: now.add(const Duration(days: 4)),
        postedDate: now.subtract(const Duration(hours: 15)),
        requirements: [
          'Market research',
          'E-commerce knowledge',
          'Data analysis',
          'Excel reporting',
        ],
      ),
      JobModel(
        id: '48',
        title: 'Contact Information Research',
        description:
            'Find contact details for 50 companies in specific industry. Need phone, email, and website.',
        category: 'Online Research',
        budget: 125.0,
        postedBy: 'Sales Team',
        deadline: now.add(const Duration(days: 4)),
        postedDate: now.subtract(const Duration(hours: 6)),
        requirements: [
          'Internet research',
          'Data accuracy',
          'Excel formatting',
          'Verification',
        ],
      ),
      JobModel(
        id: '49',
        title: 'Statistical Data Collection',
        description:
            'Collect statistical data on education trends from official sources. Create summary report.',
        category: 'Online Research',
        budget: 170.0,
        postedBy: 'Education Researcher',
        deadline: now.add(const Duration(days: 6)),
        postedDate: now.subtract(const Duration(hours: 12)),
        requirements: [
          'Data collection',
          'Statistical analysis',
          'Official sources',
          'Report writing',
        ],
      ),
      JobModel(
        id: '50',
        title: 'News Article Compilation',
        description:
            'Compile recent news articles about renewable energy. Need 30 articles with links and summaries.',
        category: 'Online Research',
        budget: 140.0,
        postedBy: 'Environmental NGO',
        deadline: now.add(const Duration(days: 5)),
        postedDate: now.subtract(const Duration(hours: 16)),
        requirements: [
          'Research skills',
          'Summarization',
          'Source credibility',
          'Organization',
        ],
      ),
    ];
  }
}
