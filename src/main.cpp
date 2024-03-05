#include <fstream>
#include <iostream>
#include <optional>
#include <sstream>
#include <vector>

enum class TokenType {
  EXIT,
  INT_LITERAL,
  SEMICOLON,
  L_PAREN,
  R_PAREN
};

struct Token {
  TokenType type;
  std::optional<std::string> value {};
};

std::vector<Token> tokenize(const std::string& str) {
  std::vector<Token> tokens;
  std::string buf;
  for (int i = 0; i < str.length(); i++) {
    char c = str[i];

    // Alphabetic Characters
    if (std::isalpha(c)) {
      buf.push_back(c);
      i++;
      while (std::isalnum(str.at(i))) {
	buf.push_back(str.at(i));
	i++;
      }
      i--;

      if (buf == "exit") {
	tokens.push_back({ .type = TokenType::EXIT });
	buf.clear();
	continue;
      } else {
	std::cerr << "Error: unknown token" << std::endl;
	exit(EXIT_FAILURE);
      }
    }
    // Numbers
    else if (std::isdigit(c)) {
      buf.push_back(c);
      i++;
      while (std::isdigit(str.at(i))) {
	buf.push_back(str.at(i));
	i++;
      }
      i--;
      tokens.push_back({ .type = TokenType::INT_LITERAL, .value = buf });
      buf.clear();
    }
    // Semicolon
    else if (c == ';') {
      tokens.push_back({ .type = TokenType::SEMICOLON });
    }
    // Left Parenthesis
    else if (c == '(') {
      tokens.push_back({ .type = TokenType::L_PAREN });
    }
    // Right Parenthesis
    else if (c == ')') {
      tokens.push_back({ .type = TokenType::R_PAREN });
    }
    // Whitespace
    else if (std::isspace(c)) {
      continue;
    }
    else {
      std::cerr << "Error: unknown token" << std::endl;
    }
  }
  
  return tokens; 
}

int main(int argc, char *argv[]) {
  if (argc != 2) {
    std::cerr << "Error: Insufficient input" << std::endl;
    std::cerr << "Usage: lithium <file.li>" << std::endl;

    return EXIT_FAILURE;
  }

  std::string contents;
  {
    std::stringstream content_stream;
    std::fstream input(argv[1], std::ios::in);
    content_stream << input.rdbuf();
    contents = content_stream.str();
  }

  std::vector<Token> tokens = tokenize(contents);

  return EXIT_SUCCESS;
}
