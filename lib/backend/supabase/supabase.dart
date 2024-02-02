import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://qlefaywtxbyejnlapehf.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFsZWZheXd0eGJ5ZWpubGFwZWhmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDQ0MDcyMzUsImV4cCI6MjAxOTk4MzIzNX0.kSaSQ-_ikrCxp4iDXh7yGf11TpvdmKhttD7-Li3Wsk4';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}