<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Portfolio</title>
    <style>
        body {
            font-family: Arial, sans-serif;

            margin: 0;
            padding: 0;
            background: #964444;
        }

        header {
            background-color: #b5f0aa;
            color: #8d6262;

            padding: 10px 0;
        }

        header .container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 20px;
        }

        header h1 {
            margin: 0;
        }

        nav ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
        }

        nav ul li {
            margin-left: 20px;
        }

        nav ul li a {
            color: #eab3b3;
            text-decoration: none;
        }

        section {
            padding: 20px 0;
        }

        section .container {
            padding: 0 20px;
        }

        #projects .project-grid {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }

        .project-card {
            background-color: #91b183;
            padding: 10px;
            flex: 1 1 calc(33.333% - 40px);
            box-sizing: border-box;
            border: 1px solid #d2abe8;
        }

        .project-card h3 {
            margin-top: 0;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        form label {
            margin-top: 10px;
        }

        form input, form textarea {
            padding: 10px;
            margin-top: 5px;
        }

        form button {
            margin-top: 10px;
            padding: 10px;
            background-color: #445e1f;
            color: #a0e2ba;
        

            border: none;
            cursor: pointer;
        }

        form button:hover {
            background-color: #8faddd;
        }

        footer {
            background-color: #aedf71;
            color: #e4dc8b;
            text-align: center;
            padding: 10px 0;
        }

        @media (max-width: 768px) {
            #projects .project-card {
                flex: 1 1 calc(50% - 20px);
            }
        }

        @media (max-width: 480px) {
            nav ul {
                flex-direction: column;
            }

            nav ul li {
                margin: 10px 0;
            }

            #projects .project-card {
                flex: 1 1 100%;
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <h1>My Portfolio</h1>
            <nav>
                <ul>
                    <li><a href="#about">About</a></li>
                    <li><a href="#projects">Projects</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <section id="about">
        <div class="container">
            <h2>About Me</h2>
            <p>Hello! I'm a passionate software developer with expertise in full-stack development. I love creating web applications that are efficient and user-friendly.</p>
        </div>
    </section>

    <section id="projects">
        <div class="container">
            <h2>Projects</h2>
            <div class="project-grid">
                <div class="project-card">
                    <h3>Project One</h3>
                    <p>Details about the first project.</p>
                </div>
                <div class="project-card">
                    <h3>Project Two</h3>
                    <p>Details about the second project.</p>
                </div>
                <div class="project-card">
                    <h3>Project Three</h3>
                    <p>Details about the third project.</p>
                </div>
                <div class="project-card">
                    <h3>Project Four</h3>
                    <p>Details about the fourth project.</p>
                </div>
            </div>
        </div>
    </section>

    <section id="contact">
        <div class="container">
            <h2>Contact</h2>
            <form action="contact.jsp" method="post">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
                
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
                
                <label for="message">Message:</label>
                <textarea id="message" name="message" required></textarea>
                
                <button type="submit">Send</button>
            </form>
        </div>
    </section>

    <footer>
        <div class="container">
            <p>&copy; 2024 My Portfolio. All Rights Reserved.</p>
        </div>
    </footer>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // Smooth scrolling for navigation links
            const navLinks = document.querySelectorAll('nav ul li a');
            
            navLinks.forEach(link => {
                link.addEventListener('click', function (e) {
                    e.preventDefault();
                    const targetId = this.getAttribute('href').substring(1);
                    const targetSection = document.getElementById(targetId);
                    
                    window.scrollTo({
                        top: targetSection.offsetTop,
                        behavior: 'smooth'
                    });
                });
            });

            // Form validation
            const form = document.querySelector('form');
            form.addEventListener('submit', function (e) {
                const name = document.getElementById('name').value.trim();
                const email = document.getElementById('email').value.trim();
                const message = document.getElementById('message').value.trim();

                if (name === '' || email === '' || message === '') {
                    e.preventDefault();
                    alert('All fields are required!');
                } else if (!validateEmail(email)) {
                    e.preventDefault();
                    alert('Please enter a valid email address.');
                }
            });

            function validateEmail(email) {
                const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                return re.test(String(email).toLowerCase());
            }
        });
    </script>
</body>
</html>
