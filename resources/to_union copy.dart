// // ignore_for_file: public_member_api_docs, sort_constructors_first
// class Un {
//   const Un.data({int i = 10, required double f})
//       : _tag = _UnTag.data,
//         _i_data = i,
//         _f_data = f,
//         _i_dadta = null,
//         _f_dadta = null,
//         _a_load = null,
//         _a_load3 = null;
//   const Un.dadta({required int i, required double f})
//       : _tag = _UnTag.dadta,
//         _i_data = null,
//         _f_data = null,
//         _i_dadta = i,
//         _f_dadta = f,
//         _a_load = null,
//         _a_load3 = null;
//   const Un.load({required List<String> a})
//       : _tag = _UnTag.load,
//         _i_data = null,
//         _f_data = null,
//         _i_dadta = null,
//         _f_dadta = null,
//         _a_load = a,
//         _a_load3 = null;
//   const Un.load3({required String a})
//       : _tag = _UnTag.load3,
//         _i_data = null,
//         _f_data = null,
//         _i_dadta = null,
//         _f_dadta = null,
//         _a_load = null,
//         _a_load3 = a;
//   const Un.aa()
//       : _tag = _UnTag.aa,
//         _i_data = null,
//         _f_data = null,
//         _i_dadta = null,
//         _f_dadta = null,
//         _a_load = null,
//         _a_load3 = null;

//   // ignore: no-object-declaration
//   Object? when<T>({
//     required T Function(_UnData2) data,
//     required T Function(_UnDatta2) dadta,
//     required T Function(List<String> a) load,
//     required T Function(String a) load3,
//     required T Function() aa,
//   }) {
//     switch (_tag) {
//       case _UnTag.data:
//         return data(_UnData2(_i_data!, _f_data!));
//       case _UnTag.dadta:
//         return dadta(_UnDatta2(123, 123));
//       case _UnTag.load:
//         return load(_a_load!);
//       case _UnTag.load3:
//         return load3(_a_load3!);
//       case _UnTag.aa:
//         return aa();
//     }
//   }

//   @override
//   String toString() {
//     switch (_tag) {
//       case _UnTag.data:
//         return 'Un.data(i: $_i_data, f: $_f_data)';
//       case _UnTag.dadta:
//         return 'Un.dadta(i: $_i_dadta, f: $_f_dadta)';
//       case _UnTag.load:
//         return 'Un.load(a: $_a_load)';
//       case _UnTag.load3:
//         return 'Un.load3(a: $_a_load3)';
//       case _UnTag.aa:
//         return 'Un.aa()';
//     }
//   }

//   final _UnTag _tag;
//   final int? _i_data;
//   final double? _f_data;
//   final int? _i_dadta;
//   final double? _f_dadta;
//   final List<String>? _a_load;
//   final String? _a_load3;
// }

// enum _UnTag {
//   data,
//   dadta,
//   load,
//   load3,
//   aa,
// }

// class _UnDatta2 extends Un {
//   _UnDatta2(this.i, this.f) : super.dadta(i: i, f: f);

//   final int i;
//   final double f;
// }

// class _UnData2 extends Un {
//   final int i;
//   final double f;
//   _UnData2(
//     this.i,
//     this.f,
//   ) : super.data(f: f, i: i);
// }
