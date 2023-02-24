/* 
class Union {
  const Union.load({required bool isError});
  const Union.init({String msg = 'hello'});
  const Union.error([String error = 'error']);
  const Union.notSucces();
}

*/

//          --TURN_GEN--
//  *************************************
//           GENERATED CODE
//  *************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

class Union {
  T map<T>({
    required T Function(_UnionLoad v) load,
    required T Function(_UnionInit v) init,
    required T Function(_UnionError v) error,
    required T Function(_UnionNotsucces v) notSucces,
  }) {
    switch (_tag) {
      case _UnionTag.load:
        return load(_UnionLoad(_isError_load!));
      case _UnionTag.init:
        return init(_UnionInit(_msg_init!));
      case _UnionTag.error:
        return error(_UnionError(_error_error!));
      case _UnionTag.notSucces:
        return notSucces(_UnionNotsucces());
    }
  }

  T maybeMap<T>({
    T Function(_UnionLoad v)? load,
    T Function(_UnionInit v)? init,
    T Function(_UnionError v)? error,
    T Function(_UnionNotsucces v)? notSucces,
    required T Function() orElse,
  }) {
    switch (_tag) {
      case _UnionTag.load:
        if (load != null) return load(_UnionLoad(_isError_load!));
break
      case _UnionTag.init:
        return init(_UnionInit(_msg_init!));
      case _UnionTag.error:
        return error(_UnionError(_error_error!));
      case _UnionTag.notSucces:
        return notSucces(_UnionNotsucces());
    }
  }

  const Union.load({required bool isError})
      : _tag = _UnionTag.load,
        _isError_load = isError,
        _msg_init = null,
        _error_error = null;
  const Union.init({String msg = 'hello'})
      : _tag = _UnionTag.init,
        _isError_load = null,
        _msg_init = msg,
        _error_error = null;
  const Union.error([String error = 'error'])
      : _tag = _UnionTag.error,
        _isError_load = null,
        _msg_init = null,
        _error_error = error;
  const Union.notSucces()
      : _tag = _UnionTag.notSucces,
        _isError_load = null,
        _msg_init = null,
        _error_error = null;

  T when<T>({
    required T Function(bool isError) load,
    required T Function(String msg) init,
    required T Function(String error) error,
    required T Function() notSucces,
  }) {
    switch (_tag) {
      case _UnionTag.load:
        return load(_isError_load!);
      case _UnionTag.init:
        return init(_msg_init!);
      case _UnionTag.error:
        return error(_error_error!);
      case _UnionTag.notSucces:
        return notSucces();
    }
  }

  @override
  String toString() {
    switch (_tag) {
      case _UnionTag.load:
        return 'Union.load(isError: $_isError_load)';
      case _UnionTag.init:
        return 'Union.init(msg: $_msg_init)';
      case _UnionTag.error:
        return 'Union.error(error: $_error_error)';
      case _UnionTag.notSucces:
        return 'Union.notSucces()';
    }
  }

  final _UnionTag _tag;
  final bool? _isError_load;
  final String? _msg_init;
  final String? _error_error;
}

enum _UnionTag {
  load,
  init,
  error,
  notSucces,
}

class _UnionLoad extends Union {
  _UnionLoad(this.isError) : super.load(isError: isError);
  final bool isError;
}

class _UnionInit extends Union {
  _UnionInit(this.msg) : super.init(msg: msg);
  final String msg;
}

class _UnionError extends Union {
  _UnionError(this.error) : super.error(error);
  final String error;
}

class _UnionNotsucces extends Union {
  _UnionNotsucces() : super.notSucces();
}
