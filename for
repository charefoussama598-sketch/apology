<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sincere Apology 🎀</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            background-color: #FFF0F5; /* لون وردي ناعم كلاسيكي */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            overflow: hidden;
            position: relative;
        }

        h1 {
            color: #6B4E5B; /* لون موف داكن وأنيق للمظهر الرسمي اللطيف */
            font-size: 2rem;
            margin-bottom: 40px;
            z-index: 10;
            text-align: center;
            padding: 0 20px;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.05);
        }

        .buttons-container {
            display: flex;
            gap: 20px;
            align-items: center;
            justify-content: center;
            z-index: 10;
            position: relative;
            width: 100%;
            height: 200px;
        }

        #yesBtn {
            background-color: #E28F9D; /* وردي هادئ وراقي */
            color: white;
            border: none;
            padding: 15px 35px;
            font-size: 1.2rem;
            font-weight: 500;
            border-radius: 30px;
            cursor: pointer;
            box-shadow: 0 4px 15px rgba(226, 143, 157, 0.3);
            transition: all 0.2s ease;
            white-space: nowrap;
            z-index: 11;
        }

        #noBtn {
            background-color: #E0E0E0; /* رمادي فاتح حيادي */
            color: #666;
            border: none;
            padding: 12px 25px;
            font-size: 1rem;
            border-radius: 30px;
            cursor: pointer;
            position: absolute;
            transition: all 0.1s ease;
            z-index: 10;
        }

        /* تساقط قلوب ناعمة جداً وصغيرة */
        .heart {
            position: absolute;
            color: #FBC4CB;
            font-size: 16px;
            animation: fall linear forwards;
            z-index: 1;
            user-select: none;
        }

        @keyframes fall {
            to {
                transform: translateY(105vh) rotate(360deg);
            }
        }
    </style>
</head>
<body>

    <h1>I sincerely apologize for the misunderstanding.<br>Do you accept my apology? ✨</h1>

    <div class="buttons-container" id="container">
        <button id="yesBtn" onclick="acceptApology()">Yes, I accept 😊</button>
        <button id="noBtn" onmouseover="moveNo()" onclick="moveNo()">No 🚫</button>
    </div>

    <script>
        let yesSize = 1.2;
        let paddingX = 35;
        let paddingY = 15;

        function moveNo() {
            const noBtn = document.getElementById('noBtn');
            const yesBtn = document.getElementById('yesBtn');
            const container = document.getElementById('container');
            
            // تحريك زر لا بشكل عشوائي لمنع الضغط عليه
            const maxX = container.clientWidth - noBtn.clientWidth;
            const maxY = container.clientHeight - noBtn.clientHeight;
            
            const randomX = Math.floor(Math.random() * maxX);
            const randomY = Math.floor(Math.random() * maxY);
            
            noBtn.style.left = randomX + 'px';
            noBtn.style.top = randomY + 'px';

            // نمو زر نعم الراقي تدريجياً
            yesSize += 0.3;
            paddingX += 12;
            paddingY += 6;
            
            yesBtn.style.fontSize = yesSize + 'rem';
            yesBtn.style.padding = `${paddingY}px ${paddingX}px`;

            // إذا كبر الزر جداً يغطي المساحة بالكامل كخيار وحيد
            if(yesSize > 4.5) {
                yesBtn.style.position = 'fixed';
                yesBtn.style.top = '0';
                yesBtn.style.left = '0';
                yesBtn.style.width = '100vw';
                yesBtn.style.height = '100vh';
                yesBtn.style.borderRadius = '0';
                yesBtn.style.display = 'flex';
                yesBtn.style.alignItems = 'center';
                yesBtn.style.justifyContent = 'center';
                noBtn.style.display = 'none';
            }
        }

        function acceptApology() {
            alert("Thank you so much! I truly appreciate your kindness and understanding. Wishing you the best! ✨🌸");
        }

        // إنشاء قلوب الباستيل الهادئة
        function createHeart() {
            const heart = document.createElement('div');
            heart.classList.add('heart');
            heart.innerHTML = '🌸'; // استبدال بعض القلوب بأزهار الكرز لمظهر أرقى وأنعم
            if (Math.random() > 0.5) {
                heart.innerHTML = '💖';
            }
            heart.style.left = Math.random() * 100 + 'vw';
            heart.style.animationDuration = Math.random() * 4 + 3 + 's'; // حركة أبطأ وأكثر هدوءاً
            heart.style.fontSize = Math.random() * 10 + 12 + 'px';
            document.body.appendChild(heart);

            setTimeout(() => {
                heart.remove();
            }, 6000);
        }

        setInterval(createHeart, 400);
    </script>
</body>
</html>
