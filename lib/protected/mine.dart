import "package:flutter/material.dart";

class Mine extends StatefulWidget {
  const Mine({super.key});

  @override
  State<Mine> createState() => _MineState();
}

class _MineState extends State<Mine> {
  final _formKey = GlobalKey<FormState>();

  final _orgController = TextEditingController();
  final _addressController = TextEditingController();
  final _noteController = TextEditingController();

  @override
  void dispose() {
    _orgController.dispose();
    _addressController.dispose();
    _noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: const Color(0xFF4361ee),
        foregroundColor: Colors.white,
        title: const Text("Generate Queue QR"),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              /// QR PREVIEW
              _QrPreview(height: size.height * 0.3),

              const SizedBox(height: 20),

              /// FORM CARD
              _FormCard(
                formKey: _formKey,
                orgController: _orgController,
                addressController: _addressController,
                noteController: _noteController,
                onGenerate: _generateQr,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _generateQr() {
    if (!_formKey.currentState!.validate()) return;

    final qrData = {
      "organization": _orgController.text,
      "address": _addressController.text,
      "note": _noteController.text,
    };

    debugPrint("QR DATA: $qrData");

    // next step: generate actual QR
  }
}

class _QrPreview extends StatelessWidget {
  final double height;

  const _QrPreview({required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.clamp(200, 320),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(18),
      ),
      child: const Center(
        child: Text(
          "QR CODE PREVIEW",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class _FormCard extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController orgController;
  final TextEditingController addressController;
  final TextEditingController noteController;
  final VoidCallback onGenerate;

  const _FormCard({
    required this.formKey,
    required this.orgController,
    required this.addressController,
    required this.noteController,
    required this.onGenerate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Queue Details",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 16),

            _Input(
              label: "Organization Name",
              hint: "Hospital, Bank, Office...",
              icon: Icons.business,
              controller: orgController,
              validator: (v) => v == null || v.isEmpty ? "Required" : null,
            ),

            const SizedBox(height: 14),

            _Input(
              label: "Address",
              hint: "Bole, Addis Ababa",
              icon: Icons.location_on_outlined,
              controller: addressController,
              validator: (v) => v == null || v.isEmpty ? "Required" : null,
            ),

            const SizedBox(height: 14),

            _Input(
              label: "Note (Optional)",
              hint: "Working hours, rules...",
              icon: Icons.note_alt_outlined,
              controller: noteController,
              maxLines: 3,
            ),

            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4361ee),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: onGenerate,
                child: const Text(
                  "Generate QR Code",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Input extends StatelessWidget {
  final String label;
  final String hint;
  final IconData icon;
  final TextEditingController controller;
  final int maxLines;
  final String? Function(String?)? validator;

  const _Input({
    required this.label,
    required this.hint,
    required this.icon,
    required this.controller,
    this.maxLines = 1,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xFF334155),
          ),
        ),
        const SizedBox(height: 6),
        TextFormField(
          controller: controller,
          maxLines: maxLines,
          validator: validator,
          decoration: InputDecoration(
            hintText: hint,
            prefixIcon: Icon(icon, color: const Color(0xFF4361ee)),
            filled: true,
            fillColor: const Color(0xFFF8FAFC),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
