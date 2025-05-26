# arquitetura_de_computadores

# Resumo: On Constructing Karnaugh Maps

## Sobre o Artigo
**Autor:** Don Thompson (Natural Science Division, Pepperdine University)  
**Publicado em:** SIGCSE Bulletin, Vol. 19 No. 2, Junho 1987

## Objetivo
O artigo apresenta um **método recursivo simples** para construção de Mapas de Karnaugh de ordem arbitrária, preenchendo uma lacuna comum nos livros de Matemática Discreta que tratam este tópico de forma superficial.

## Conceitos Fundamentais

### Mapas de Karnaugh
- **Definição:** Array contendo todos os 2ⁿ termos canônicos possíveis para uma função booleana de n variáveis
- **Propósito:** Minimizar funções booleanas da forma canônica para a forma minimal de soma de produtos
- **Aplicação:** Reduzir o número de portas lógicas necessárias em redes combinacionais

### Características Importantes
- Quadrados vizinhos diferem em **exatamente uma coordenada**
- Implicantes primos podem ser formados como **blocos contíguos** de células contendo 2ᵏ membros
- Para mapas de ordem ≥ 5, surge o problema de que cada célula precisa de 5 vizinhos mas possui apenas 4 lados

## Método Recursivo de Construção

### Algoritmo Base
Para construir M(n+1) a partir de M(n):

1. **Tomar duas cópias** do mapa M(n)
2. **Rotular** a primeira cópia como xₙ₊₁ e a segunda como x'ₙ₊₁
3. **Coordenar** cada mapa conforme o esquema descrito
4. **Unir as linhas** seguindo o padrão específico:
   - Se n é par: m = 2ⁿ/²
   - Se n é ímpar: m = 2⁽ⁿ⁻¹⁾/²
   - Unir L₀ com Lₘ, L₀' com Lₘ', Lⱼ com L'ₘ₋ⱼ (onde 0 ≤ j ≤ m, j par)

### Progressão Demonstrada
O artigo ilustra a construção através de figuras mostrando:
- **Ordem 1 → 2:** Dois mapas de ordem 1 unidos formam ordem 2
- **Ordem 2 → 3:** Dois mapas de ordem 2 unidos formam ordem 3  
- **Ordem 3 → 4:** Dois mapas de ordem 3 unidos formam ordem 4
- **Ordem 4 → 5:** Dois mapas de ordem 4 unidos formam ordem 5

## Contribuições

### Acadêmicas
- **Esclarece** um processo geralmente mal explicado na literatura
- **Fornece** exemplo illuminativo de recursão
- **Demonstra** método sistemático para mapas de qualquer ordem

### Práticas
- **Facilita** o ensino de Matemática Discreta
- **Oferece** alternativa ao algoritmo Quine-McCluskey para casos geométricos
- **Estabelece** base teórica sólida para construção de mapas complexos

## Limitações e Considerações
- Para mapas de **ordem ≥ 5**, a visualização torna-se complexa devido às limitações geométricas
- O foco é na **geometria e construção** rather than na eficiência algorítmica
- **Método complementar** ao Quine-McCluskey (mais adequado para implementação computacional)

---
*Este resumo destaca os pontos principais do artigo seminal de Thompson sobre a construção recursiva de Mapas de Karnaugh, uma ferramenta fundamental em lógica digital e matemática discreta.*
