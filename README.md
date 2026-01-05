# AtCoder Haskell Environment

AtCoder 競技プログラミング用の Haskell 環境です。

## 必要なもの

- GHC 9.8.4
- Cabal 3.14+
- GLPK (GNU Linear Programming Kit)
- GSL (GNU Scientific Library)

## セットアップ

### 1. システムライブラリのインストール

macOS の場合（Homebrew）:

```bash
brew install glpk gsl
```

### 2. Haskell 依存関係のインストール

```bash
cabal update
cabal build --only-dependencies
```

### 3. ビルド

```bash
cabal build
```

## 使い方

### プログラムの実行

```bash
cabal run
```

### Main.hs の編集

[app/Main.hs](app/Main.hs)を編集して、AtCoder の問題を解いてください。

## インストール済みライブラリ

AtCoder 環境に合わせて、以下のライブラリがインストールされています:

- QuickCheck, ac-library-hs, adjunctions, array, attoparsec
- bifunctors, binary, bitvec, bytestring, comonad, containers
- contravariant, deepseq, directory, distributive, exceptions
- extra, fgl, filepath, flow, free, hashable, heaps
- hmatrix, hmatrix-glpk, hmatrix-gsl, hmatrix-special
- ilist, indexed-traversable, integer-logarithms, kan-extensions
- lens, linear-base, list-t, massiv, megaparsec
- monad-memo, mono-traversable, mtl, mutable-containers
- mwc-random, parallel, parsec, parser-combinators, pretty
- primitive, process, profunctors, psqueues, random
- reflection, regex-tdfa, safe-exceptions, scientific
- semialign, semigroupoids, split, stm, strict, strict-lens
- tagged, tasty, text, tf-random, these, these-lens
- time, transformers, trifecta, unboxing-vector, unix
- unordered-containers, utility-ht, vector, vector-algorithms
- vector-split, vector-stream, vector-th-unbox, wide-word
- witherable, xhtml
