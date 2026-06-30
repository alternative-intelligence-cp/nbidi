# nbidi

**A pure Nitpick implementation of the Unicode Bidirectional Algorithm (UBA).**

`nbidi` is designed to be a completely memory-safe, dependency-free replacement for FriBidi, written natively in Nitpick. Its purpose is to securely resolve bidirectional text runs (e.g., mixing Left-to-Right English with Right-to-Left Arabic or Hebrew) for rendering engines like NGUI.

## Current Limitations (v0.7.0)

Please note that this is a **minimal stub** release. The current implementation:
- **Supports LTR/English only:** The UBA collapses completely for pure Left-to-Right English text. For this initial phase, the engine performs fast, secure validation and returns a single LTR run, avoiding all dynamic allocations and complex parsing loops.
- **RTL Support:** Full Right-to-Left and mixed-direction support is planned for future releases once the core NGUI rendering pipeline is fully verified.

## Mission and Safety

This library is part of the broader Nikola AGI ecosystem. Our core philosophy demands zero-compromise safety, mathematical determinism, and verifiable memory bounds without relying on C FFI. If you need full UBA support sooner than our roadmap dictates, we welcome contributions! However, all pull requests must strictly adhere to our "No C FFI" and pure Nitpick standards.

## Usage

```nitpick
use "nbidi".*;

// Returns an array of TextRuns safely.
TextRun->:runs = resolve_bidi_english(text_ptr, length);
```

## Contributing

Contributions are welcome! If you would like to help build out the full UBA state machine in pure Nitpick, please open an issue to discuss your approach before submitting a PR.
