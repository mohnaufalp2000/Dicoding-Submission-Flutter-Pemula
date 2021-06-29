import 'package:hire_me/core/model.dart';

var listJob = [
  JobDesk(title: 'Programmer', image: 'images/programmer.png', count: 4),
  JobDesk(title: 'UI/UX', image: 'images/uiux.png', count: 4),
  JobDesk(title: 'Sosmed Admin', image: 'images/sosmed.png', count: 2)
];

var listFreelancer = [
  Freelancer(
      name: 'Ahmad Dhani',
      jobdesk: 'Programmer',
      location: 'Jakarta',
      image: 'https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/d07bca98931623.5ee79b6a8fa55.jpg',
      overview: 'Saya adalah seorang programmer khususnya dalam bidang Web Development. Terbiasa mengerjakan bagian backend dalam web development dengan Node JS',
      skills: [
        'HTML',
        'CSS',
        'Javascript',
        'Node.JS',
        ],
      portofolio: [
        'https://cdn.dribbble.com/users/1913365/screenshots/3877901/gorrax_avatar1.jpg'
      ],
      ),
  Freelancer(
      name: 'Didan Wahidan',
      jobdesk: 'Programmer',
      location: 'Bandung',
      image: 'https://pbs.twimg.com/media/EbNX_erVcAUlwIx.jpg:large',
      overview: 'Saya adalah seorang Android Developer. Saya menguasai Bahasa Kotlin, Java, dan menguasai pattern MVVM',
      skills: [
        'Native Android',
        'Java',
        'Kotlin',
        'Android Studio'
        ],
      portofolio: [
        'https://repository-images.githubusercontent.com/298908790/f9c24100-0434-11eb-851f-b88860f2f90c'
      ]
      ),
  Freelancer(
      name: 'Ananda Reza',
      jobdesk: 'UI/UX Designer',
      location: 'Surabaya',
      image: 'https://cdn.dribbble.com/users/230875/screenshots/12078079/media/7ba8ec4a42b529dcbbc695ce0dd07a4a.jpg?compress=1&resize=400x300',
      overview: 'Saya adalah seoranga UI/UX Designer. Telah menekuni bidang ini selama 2 tahun',
      skills: [
        'Figma',
        'UI Design',
        'UX Design'
        ],
      portofolio: [
        'https://d1qg2exw9ypjcp.cloudfront.net/assets/prod/16659/p1cuf9miqr5kj1oe9msm1s3tv2r3.png',
        'https://i.pinimg.com/originals/42/81/a9/4281a9636ca343ef77207196b4af5be8.jpg',
        'https://cdn.dribbble.com/users/1615584/screenshots/14282211/media/715273fd7f22b5834da83dac3fd2a346.jpg'
        ]
      ),
  Freelancer(
      name: 'Taufiq Rizal',
      jobdesk: 'Programmer',
      location: 'Malang',
      image: 'https://pro2-bar-s3-cdn-cf1.myportfolio.com/6adeab593c9137cc7de13289a67fbf5a/21ab553e-7557-4797-8ae0-4b6554b91626_rw_3840.jpg?h=63581603079f2eb9262dfe041a451dc5',
      overview: 'Saya adalah seorang Flutter Developer. Saya bisa menciptakan aplikasi multi-platform sesuai kebutuhan anda',
      skills: [
        'Dart',
        'Flutter',
        'Visual Studio Code'
        ],
        portofolio: [
          'https://cybdom.tech/wp-content/uploads/2019/06/wallet2.png',
          'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/2956cb81816085.5d0a9eea2e10b.jpg'
        ]
      ),
  // Freelancer(
  //     name: 'Farid Widya',
  //     jobdesk: 'UI/UX Designer',
  //     location: 'Surabaya',
  //     image:'https://mir-s3-cdn-cf.behance.net/project_modules/1400/2c0788101650903.5f2369be0091d.jpg',
  //     overview:'Saya adalah seorang UI/UX Designer. Ahli dalam mendesain interface menggunakan Figma',
  //     skills: [
  //       'Figma',
  //       'UI Design',
  //       'UX Design'
  //     ]),
  // Freelancer(
  //     name: 'Asep Syarifuddin',
  //     jobdesk: 'UI/UX Designer',
  //     location: 'Garut',
  //     image:'https://cdn.dribbble.com/users/3020080/screenshots/15085975/media/25530f071f257c7c94ee33d75441fa62.png?compress=1&resize=400x300',
  //     overview:'Saya adalah seorang UI/UX Designer. Ahli dalam mendesain interface menggunakan Figma dan Adobe XD, dan ahli mendesain dengan photoshop',
  //     skills: [
  //       'Adobe XD',
  //       'Figma',
  //       'UI Design',
  //       'UX Design',
  //       'Photoshop',
  //       'Design Graphics'
  //     ]),
  // Freelancer(
  //     name: 'Nadin',
  //     jobdesk: 'Programmer',
  //     location: 'Bandung',
  //     image:'https://cdn.dribbble.com/users/230875/screenshots/12078079/media/c08285d2e039896a565cffeb5eb44a15.jpg?compress=1&resize=400x300',
  //     overview:'Saya adalah seorang front-end developer. Menguasai framework Vue JS, React, Angular',
  //     skills: [
  //       'HTML',
  //       'CSS',
  //       'Javascript',
  //       'Bootstrap 4',
  //       'Vue JS',
  //       'React JS',
  //       'Angular'
  //     ]),
  // Freelancer(
  //     name: 'Vina Panduwinata',
  //     jobdesk: 'UI/UX Designer',
  //     location: 'Bekasi',
  //     image:'https://f8n-ipfs-production.imgix.net/QmStSTTT4KVFUf3TDFpD3iXLUCm7MA5KTieBgrQKjCh1mq/nft.jpg?h=640&q=80',
  //     overview:'Saya adalah seorang UI/UX Designer. Pernah terlibat project besar dengan beberapa start-up ternama',
  //     skills: [
  //       'Figma',
  //       'UI Design',
  //       'UX Design'
  //     ]),
  // Freelancer(
  //     name: 'Putri Maharani',
  //     jobdesk: 'Admin',
  //     location: 'Semarang',
  //     image:'https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/baa20698931623.5ee79b6a8ec2b.jpg',
  //     overview: 'Saya adalah social media enthusiast. Pernah menjabat sebagai admin di salah satu online shop ternama',
  //     skills: [
  //       'Photoshop',
  //       'Design Graphics',
  //       'Communication'
  //     ]),
  // Freelancer(
  //     name: 'Dewi Fortuna',
  //     jobdesk: 'Admin',
  //     location: 'Jakarta',
  //     image:'https://mir-s3-cdn-cf.behance.net/project_modules/1400/6cb044108272239.5fba5cbcac648.jpg',
  //     overview:'Selalu up-to-date terkait dengan media sosial. Berpengalaman dalam promosi di sosial media',
  //     skills: [
  //       'Photoshop',
  //       'Design Graphics',
  //       'Communication'
  //     ]),
];

var listProgrammer = [
  Freelancer(
      name: 'Ahmad Dhani',
      jobdesk: 'Programmer',
      location: 'Jakarta',
      image:'https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/d07bca98931623.5ee79b6a8fa55.jpg',
      overview:'Saya adalah seorang programmer khususnya dalam bidang Web Development. Terbiasa mengerjakan bagian backend dalam web development dengan Node JS',
      skills: [
        'HTML',
        'CSS',
        'Javascript',
        'Node.JS'
        ],
      portofolio: [
        'https://cdn.dribbble.com/users/1913365/screenshots/3877901/gorrax_avatar1.jpg'
      ],
      ),
    
    Freelancer(
      name: 'Nadin',
      jobdesk: 'Programmer',
      location: 'Bandung',
      image:
          'https://cdn.dribbble.com/users/230875/screenshots/12078079/media/c08285d2e039896a565cffeb5eb44a15.jpg?compress=1&resize=400x300',
      overview:
          'Saya adalah seorang front-end developer. Menguasai framework Vue JS, React, Angular',
      skills: [
        'HTML',
        'CSS',
        'Javascript',
        'Bootstrap 4',
        'Vue JS',
        'React JS',
        'Angular'
        ],
      portofolio: [
        'https://themeforest.img.customer.envatousercontent.com/files/334029113/preview.__large_preview.png?auto=compress%2Cformat&q=80&fit=crop&crop=top&max-h=8000&max-w=590&s=49cc06fbba56dfe9927e4ec2f64034e6',
        'https://i.ibb.co/q7c5JZY/covidshowcase.jpg'
      ]
      ),
  Freelancer(
      name: 'Didan Wahidan',
      jobdesk: 'Programmer',
      location: 'Bandung',
      image: 'https://pbs.twimg.com/media/EbNX_erVcAUlwIx.jpg:large',
      overview:
          'Saya adalah seorang Android Developer. Saya menguasai Bahasa Kotlin, Java, dan menguasai pattern MVVM',
      skills: [
        'Native Android',
        'Java',
        'Kotlin',
        'Android Studio'
        ],
      portofolio: [
        'https://repository-images.githubusercontent.com/298908790/f9c24100-0434-11eb-851f-b88860f2f90c'
        ]
      ),
  Freelancer(
      name: 'Taufiq Rizal',
      jobdesk: 'Programmer',
      location: 'Malang',
      image:
          'https://pro2-bar-s3-cdn-cf1.myportfolio.com/6adeab593c9137cc7de13289a67fbf5a/21ab553e-7557-4797-8ae0-4b6554b91626_rw_3840.jpg?h=63581603079f2eb9262dfe041a451dc5',
      overview:
          'Saya adalah seorang Flutter Developer. Saya bisa menciptakan aplikasi multi-platform sesuai kebutuhan anda',
      skills: [
        'Dart',
        'Flutter',
        'Visual Studio Code'
        ],
        portofolio: [
          'https://cybdom.tech/wp-content/uploads/2019/06/wallet2.png',
          'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/2956cb81816085.5d0a9eea2e10b.jpg'
        ]
      ),
];

var listDesigner = [
  Freelancer(
      name: 'Ananda Reza',
      jobdesk: 'UI/UX Designer',
      location: 'Surabaya',
      image: 'https://cdn.dribbble.com/users/230875/screenshots/12078079/media/7ba8ec4a42b529dcbbc695ce0dd07a4a.jpg?compress=1&resize=400x300',
      overview: 'Saya adalah seoranga UI/UX Designer. Telah menekuni bidang ini selama 2 tahun',
      skills: [
        'Figma',
        'UI Design',
        'UX Design'
        ],
      portofolio: [
        'https://d1qg2exw9ypjcp.cloudfront.net/assets/prod/16659/p1cuf9miqr5kj1oe9msm1s3tv2r3.png',
        'https://i.pinimg.com/originals/42/81/a9/4281a9636ca343ef77207196b4af5be8.jpg',
        'https://cdn.dribbble.com/users/1615584/screenshots/14282211/media/715273fd7f22b5834da83dac3fd2a346.jpg'
        ]),
  Freelancer(
      name: 'Farid Widya',
      jobdesk: 'UI/UX Designer',
      location: 'Surabaya',
      image:'https://mir-s3-cdn-cf.behance.net/project_modules/1400/2c0788101650903.5f2369be0091d.jpg',
      overview:'Saya adalah seorang UI/UX Designer. Ahli dalam mendesain interface menggunakan Figma',
      skills: [
        'Figma',
        'UI Design',
        'UX Design'
        ],
      portofolio: [
        'https://i.pinimg.com/originals/2b/ff/0f/2bff0f99f7321aee1037ed3d2fb5d7bb.png'
        ]
      ),
   Freelancer(
      name: 'Asep Syarifuddin',
      jobdesk: 'UI/UX Designer',
      location: 'Garut',
      image:'https://cdn.dribbble.com/users/3020080/screenshots/15085975/media/25530f071f257c7c94ee33d75441fa62.png?compress=1&resize=400x300',
      overview:'Saya adalah seorang UI/UX Designer. Ahli dalam mendesain interface menggunakan Figma dan Adobe XD, dan ahli mendesain dengan photoshop',
      skills: [
        'Adobe XD',
        'Figma',
        'UI Design',
        'UX Design',
        'Photoshop',
        'Design Graphics'
        ],
      portofolio: [
        'https://mir-s3-cdn-cf.behance.net/project_modules/1400/b646bb84879231.5d6ad0b303a1e.png',
        'https://www.sliderrevolution.com/wp-content/uploads/2020/05/featured-header.jpg'
        ]
      ),
  Freelancer(
      name: 'Vina Panduwinata',
      jobdesk: 'UI/UX Designer',
      location: 'Bekasi',
      image:'https://f8n-ipfs-production.imgix.net/QmStSTTT4KVFUf3TDFpD3iXLUCm7MA5KTieBgrQKjCh1mq/nft.jpg?h=640&q=80',
      overview:'Saya adalah seorang UI/UX Designer. Pernah terlibat project besar dengan beberapa start-up ternama',
      skills: [
        'Figma',
        'UI Design',
        'UX Design'
        ],
        portofolio: [
          'https://cdn.dribbble.com/users/2794383/screenshots/15461851/media/fc992bcfab90f8810b562912c1f5f9e1.png',
          'https://cdn.dribbble.com/users/4601337/screenshots/15432008/media/6e4766482fea83fba931fe23e27c09c7.png'
        ]
      ),
];

var listAdmin = [
     Freelancer(
      name: 'Putri Maharani',
      jobdesk: 'Admin',
      location: 'Semarang',
      image:'https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/baa20698931623.5ee79b6a8ec2b.jpg',
      overview: 'Saya adalah social media enthusiast. Pernah menjabat sebagai admin di salah satu online shop ternama',
      skills: [
        'Photoshop',
        'Design Graphics',
        'Communication'
        ],
      portofolio: [
        'https://i.pinimg.com/originals/69/8a/29/698a291d8006461c56ad3c96b756600a.jpg'
      ]
      ),
  Freelancer(
      name: 'Dewi Fortuna',
      jobdesk: 'Admin',
      location: 'Jakarta',
      image:'https://mir-s3-cdn-cf.behance.net/project_modules/1400/6cb044108272239.5fba5cbcac648.jpg',
      overview:'Selalu up-to-date terkait dengan media sosial. Berpengalaman dalam promosi di sosial media',
      skills: [
        'Photoshop',
        'Design Graphics',
        'Communication'
        ],
      portofolio: [
        'https://i1.wp.com/freepreset.net/wp-content/uploads/2020/06/online-shop-instagram-feed-post-nvu7kej.jpg?fit=710%2C473&ssl=1'
      ]
    ),
];
