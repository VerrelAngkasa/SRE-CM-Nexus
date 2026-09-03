# Verrel Angkasa - SRE Junior Task Submission

Nexus App: http://34.128.64.178:80 <br>
(In case needed) <br>
Username: admin <br>
Password: 12345678 <br>
<img width="1641" height="556" alt="Screenshot 2026-09-02 183942" src="https://github.com/user-attachments/assets/c6e2b9df-3a9a-4f69-8658-7078196ecfc2" />
<br>
<img width="1433" height="944" alt="Screenshot 2026-09-02 184106" src="https://github.com/user-attachments/assets/2b319f45-475e-49a8-b637-2f1a20f309c2" />

1. Build a Custom Container <br>
While testing and building the image, I noticed that the Nexus image natively supports Google Cloud Storage (GCS) capability for the blob store without requiring a plugin. Although the image had the capability, I still define the custom Dockerfile image in order to follow the challenge requirements. <br>
<img width="768" height="485" alt="Screenshot 2026-09-03 111117" src="https://github.com/user-attachments/assets/acd72e1a-a40d-46fa-afb8-eb3c3d615099" />
<br>

2. Kubernetes Config
<img width="595" height="106" alt="Screenshot 2026-09-02 180519" src="https://github.com/user-attachments/assets/b35cec08-1362-4afa-832c-2c2327638670" />
<br>
<img width="1255" height="311" alt="Screenshot 2026-09-02 180626" src="https://github.com/user-attachments/assets/5783a1b0-0ae2-4e3d-a2a4-1a54dd4a88d3" />

4. GCP Resource Creation
<img width="938" height="244" alt="Screenshot 2026-09-02 180738" src="https://github.com/user-attachments/assets/b0cec5d0-e72b-4903-99a6-073086d2e6ae" />

5. Deploy to GCP Project
<img width="1433" height="643" alt="Screenshot 2026-09-02 182403" src="https://github.com/user-attachments/assets/7790b3c5-17b1-4267-9e6b-8c0ea543d981" />
<br>
<img width="1253" height="634" alt="Screenshot 2026-09-02 182443" src="https://github.com/user-attachments/assets/f2c52698-c2c3-42ad-94fc-f956a56a1076" />
<br>
<img width="990" height="648" alt="Screenshot 2026-09-02 183018" src="https://github.com/user-attachments/assets/004da8b0-2318-4ba9-a0c7-4314314047b7" />
<br>
<img width="676" height="188" alt="Screenshot 2026-09-02 183648" src="https://github.com/user-attachments/assets/06f4e600-5715-4686-a5f9-14e81c07a175" />
<br>
<img width="448" height="147" alt="Screenshot 2026-09-02 182937" src="https://github.com/user-attachments/assets/ca5e73b6-af64-4755-ba07-803bcea91089" />
<br>
<img width="817" height="446" alt="Screenshot 2026-09-02 182539" src="https://github.com/user-attachments/assets/4ecacd00-fa82-4982-8f0b-f24d6e4da410" />
<br>
<img width="1145" height="506" alt="Screenshot 2026-09-02 182811" src="https://github.com/user-attachments/assets/f9bfbb7b-7db8-4ebd-a1c5-b983f159699f" />

6. Continuous integration - a theoretical question <br>
Ans: I will suggest to utilize CI tools for example GitHub Actions, Jenkins, GitLab, etc, where we can define workflows to run continuous integration and delivery pipelines whenever changes occur in the source code whether it triggered from a push or pull request event. The workflow will build, run tests, and automatically deploy the new image's version to the test environtment.






