<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mohamed Kora</title>
    <style>
        /* ==========================================
           1. التنسيقات والألوان (CSS) - الأسود والأخضر
           ========================================== */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            background-color: #0d1117;
            color: #f0f6fc;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            padding-bottom: 30px;
        }

        /* الهيدر العلوي */
        .app-header {
            background-color: #161b22;
            padding: 18px;
            text-align: center;
            border-bottom: 2px solid #00ff66;
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .app-header h1 {
            color: #00ff66;
            font-size: 22px;
            letter-spacing: 1px;
        }

        /* شريط التنقل الرئيسي */
        .nav-bar {
            display: flex;
            justify-content: space-around;
            background-color: #161b22;
            padding: 10px 5px;
            border-bottom: 1px solid #30363d;
        }

        .nav-btn {
            background: none;
            border: none;
            color: #8b949e;
            font-size: 15px;
            font-weight: bold;
            padding: 8px 18px;
            cursor: pointer;
            border-radius: 20px;
            transition: all 0.3s ease;
        }

        .nav-btn.active {
            background-color: #00ff66;
            color: #0d1117;
            box-shadow: 0 0 10px rgba(0, 255, 102, 0.3);
        }

        /* الحاوية والأقسام */
        .container {
            padding: 15px;
            max-width: 600px;
            margin: 0 auto;
        }

        .tab-content {
            display: none;
        }

        .tab-content.active {
            display: block;
        }

        .section-title {
            color: #00ff66;
            font-size: 18px;
            margin-bottom: 15px;
            border-right: 3px solid #00ff66;
            padding-right: 8px;
        }

        /* تصميم البطاقات العامة */
        .card {
            background-color: #21262d;
            border-radius: 12px;
            padding: 15px;
            margin-bottom: 12px;
            border: 1px solid #30363d;
        }

        /* تصميم بطاقة المباراة */
        .match-card {
            text-align: center;
            border-right: 4px solid #00ff66;
        }

        .badge {
            display: inline-block;
            padding: 4px 10px;
            border-radius: 12px;
            font-size: 12px;
            font-weight: bold;
            margin-bottom: 12px;
        }

        .badge.live {
            background-color: #00ff66;
            color: #0d1117;
        }

        .badge.upcoming {
            background-color: #30363d;
            color: #8b949e;
        }

        .teams {
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-size: 17px;
            font-weight: bold;
            padding: 5px 10px;
        }

        .score {
            color: #00ff66;
            background-color: #161b22;
            padding: 6px 14px;
            border-radius: 8px;
            border: 1px solid #30363d;
            font-size: 18px;
        }

        .time {
            color: #8b949e;
            font-size: 13px;
            margin-top: 10px;
        }

        /* تصميم قسم الأخبار */
        .news-card h3 {
            color: #ffffff;
            font-size: 16px;
            margin-bottom: 8px;
        }

        .news-card p {
            color: #8b949e;
            font-size: 14px;
            line-height: 1.5;
        }

        /* تصميم جدول الترتيب */
        .standings-table {
            width: 100%;
            border-collapse: collapse;
            background-color: #21262d;
            border-radius: 10px;
            overflow: hidden;
        }

        .standings-table th, .standings-table td {
            padding: 12px 8px;
            text-align: center;
            border-bottom: 1px solid #30363d;
            font-size: 14px;
        }

        .standings-table th {
            background-color: #161b22;
            color: #00ff66;
        }

        .standings-table tr:last-child td {
            border-bottom: none;
        }
    </style>
</head>
<body>

    <!-- الهيدر -->
    <header class="app-header">
        <h1>Mohamed Kora ⚽</h1>
    </header>

    <!-- شريط التنقل -->
    <nav class="nav-bar">
        <button class="nav-btn active" onclick="switchTab('matches', this)">المباريات</button>
        <button class="nav-btn" onclick="switchTab('news', this)">الأخبار</button>
        <button class="nav-btn" onclick="switchTab('standings', this)">الترتيب</button>
    </nav>

    <!-- المحتوى -->
    <main class="container">
        
        <!-- 1. قسم المباريات -->
        <section id="matches" class="tab-content active">
            <h2 class="section-title">مباريات اليوم</h2>
            
            <div class="card match-card">
                <span class="badge live">مباشر الان</span>
                <div class="teams">
                    <span>الأهلي</span>
                    <span class="score">1 - 0</span>
                    <span>الزمالك</span>
                </div>
                <p class="time">الشوط الثاني - الدقيقة 65'</p>
            </div>

            <div class="card match-card">
                <span class="badge upcoming">قريباً</span>
                <div class="teams">
                    <span>برشلونة</span>
                    <span class="score">VS</span>
                    <span>ريال مدريد</span>
                </div>
                <p class="time">اليوم - الساعة 10:00 مساءً</p>
            </div>
        </section>

        <!-- 2. قسم الأخبار -->
        <section id="news" class="tab-content">
            <h2 class="section-title">أحدث الأخبار الرياضية</h2>
            
            <div class="card news-card">
                <h3>عاجل: التشكيلة الرسمية لمباراة القمة</h3>
                <p>إعلان التشكيل الأساسي للفريقين قبل انطلاق اللقاء، والمدرب يعتمد على الخطة الهجومية...</p>
            </div>

            <div class="card news-card">
                <h3>نتائج قرعة دوري أبطال أوروبا</h3>
                <p>مواجهات نارية ومثيرة تفرزها القرعة في دور المجموعات لهذا الموسم...</p>
            </div>
        </section>

        <!-- 3. قسم جدول الترتيب -->
        <section id="standings" class="tab-content">
            <h2 class="section-title">جدول ترتيب الدوري</h2>
            
            <table class="standings-table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>الفريق</th>
                        <th>لعب</th>
                        <th>نقاط</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>الأهلي</td>
                        <td>10</td>
                        <td>26</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>بيراميدز</td>
                        <td>10</td>
                        <td>23</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>الزمالك</td>
                        <td>10</td>
                        <td>22</td>
                    </tr>
                </tbody>
            </table>
        </section>

    </main>

    <!-- ==========================================
       2. البرمجة والتفاعل (JavaScript)
       ========================================== -->
    <script>
        function switchTab(tabId, btnElement) {
            // إخفاء جميع الأقسام
            const contents = document.querySelectorAll('.tab-content');
            contents.forEach(content => content.classList.remove('active'));

            // إلغاء تفعيل الأزرار
            const buttons = document.querySelectorAll('.nav-btn');
            buttons.forEach(button => button.classList.remove('active'));

            // تفعيل القسم والزر المحدد
            document.getElementById(tabId).classList.add('active');
            btnElement.classList.add('active');
        }
    </script>
</body>
</html>