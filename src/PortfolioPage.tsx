import React from "react";
import { Button } from "./stories/Button";
import "./PortfolioPage.css";

function PortfolioPage() {
  return (
    <div className="portfolio-container">
      <section>
        <h2>Basic Information:</h2>
        <ul>
          <li>
            <strong>Full name:</strong> Cong Chen
          </li>
          <li>
            <strong>Email:</strong> chencong.19888@gmail.com
          </li>
        </ul>
      </section>

      <section>
        <h2>Work Showcase:</h2>
        <div className="work-item">
          <h3>Component Library</h3>
          <p>
            Description: Creating a Component Library including button, label
            and so on by using React and Storybook.
          </p>
          <p>
            GitHub Link:{" "}
            <a href="https://github.com/CongInCA/Component-Library.git">
              Component Library GitHub
            </a>{" "}
            <Button
              label="GitHub"
              onClick={() =>
                (window.location.href =
                  "https://github.com/CongInCA/Component-Library.git")
              }
            />
          </p>
          <p>Tech List: JavaScript, TypeScript, React</p>
        </div>
        <div className="work-item">
          <h3>UI Component Library</h3>
          <p>
            Description: Add to the existing code building process by adding
            code quality checks to the build process.
          </p>
          <p>
            GitHub Link:{" "}
            <a href="https://github.com/CongInCA/Test_components.git">
              UI Component Library GitHub
            </a>{" "}
            <Button
              label="GitHub"
              onClick={() =>
                (window.location.href =
                  "https://github.com/CongInCA/Test_components.git")
              }
            />
          </p>
          <p>Tech List: JavaScript, TypeScript, React</p>
        </div>
      </section>

      <section>
        <h2>Skill Set:</h2>
        <div>
          <h3>Programming Languages:</h3>
          <p>HTML, CSS, JavaScript, TypeScript, Java, PHP, Ruby, Python</p>
        </div>
        <div>
          <h3>Frameworks:</h3>
          <p>React, Ruby on Rails</p>
        </div>
      </section>

      <section>
        <h2>Resources:</h2>
        <div>
          <h3>Title: Learn React</h3>
          <img
            src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/2300px-React-icon.svg.png"
            alt="React Icon"
            style={{ width: "100px", height: "100px" }}
          />
          <p>Summary: A comprehensive guide to learning React.js</p>
          <p>
            Link: <a href="https://reactjs.org/">React Official Website</a>
          </p>
        </div>
      </section>

      <section>
        <h2>Developer Settings:</h2>
        <ul>
          <li>
            <strong>VSCode Setup:</strong> Default settings and dark mode
          </li>
          <li>
            <strong>Terminal Setup:</strong> MacOS terminal
          </li>
          <li>
            <strong>Preferred Editor Font:</strong> Consolas
          </li>
        </ul>
      </section>
    </div>
  );
}

export default PortfolioPage;
