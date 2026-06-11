// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apply_for_trainer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ApplyForTrainerEvent {

 TrainerInfo get info;
/// Create a copy of ApplyForTrainerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApplyForTrainerEventCopyWith<ApplyForTrainerEvent> get copyWith => _$ApplyForTrainerEventCopyWithImpl<ApplyForTrainerEvent>(this as ApplyForTrainerEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApplyForTrainerEvent&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString() {
  return 'ApplyForTrainerEvent(info: $info)';
}


}

/// @nodoc
abstract mixin class $ApplyForTrainerEventCopyWith<$Res>  {
  factory $ApplyForTrainerEventCopyWith(ApplyForTrainerEvent value, $Res Function(ApplyForTrainerEvent) _then) = _$ApplyForTrainerEventCopyWithImpl;
@useResult
$Res call({
 TrainerInfo info
});




}
/// @nodoc
class _$ApplyForTrainerEventCopyWithImpl<$Res>
    implements $ApplyForTrainerEventCopyWith<$Res> {
  _$ApplyForTrainerEventCopyWithImpl(this._self, this._then);

  final ApplyForTrainerEvent _self;
  final $Res Function(ApplyForTrainerEvent) _then;

/// Create a copy of ApplyForTrainerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? info = null,}) {
  return _then(_self.copyWith(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as TrainerInfo,
  ));
}

}


/// Adds pattern-matching-related methods to [ApplyForTrainerEvent].
extension ApplyForTrainerEventPatterns on ApplyForTrainerEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Apply value)?  apply,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Apply() when apply != null:
return apply(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Apply value)  apply,}){
final _that = this;
switch (_that) {
case _Apply():
return apply(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Apply value)?  apply,}){
final _that = this;
switch (_that) {
case _Apply() when apply != null:
return apply(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( TrainerInfo info)?  apply,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Apply() when apply != null:
return apply(_that.info);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( TrainerInfo info)  apply,}) {final _that = this;
switch (_that) {
case _Apply():
return apply(_that.info);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( TrainerInfo info)?  apply,}) {final _that = this;
switch (_that) {
case _Apply() when apply != null:
return apply(_that.info);case _:
  return null;

}
}

}

/// @nodoc


class _Apply implements ApplyForTrainerEvent {
  const _Apply(this.info);
  

@override final  TrainerInfo info;

/// Create a copy of ApplyForTrainerEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApplyCopyWith<_Apply> get copyWith => __$ApplyCopyWithImpl<_Apply>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Apply&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString() {
  return 'ApplyForTrainerEvent.apply(info: $info)';
}


}

/// @nodoc
abstract mixin class _$ApplyCopyWith<$Res> implements $ApplyForTrainerEventCopyWith<$Res> {
  factory _$ApplyCopyWith(_Apply value, $Res Function(_Apply) _then) = __$ApplyCopyWithImpl;
@override @useResult
$Res call({
 TrainerInfo info
});




}
/// @nodoc
class __$ApplyCopyWithImpl<$Res>
    implements _$ApplyCopyWith<$Res> {
  __$ApplyCopyWithImpl(this._self, this._then);

  final _Apply _self;
  final $Res Function(_Apply) _then;

/// Create a copy of ApplyForTrainerEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,}) {
  return _then(_Apply(
null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as TrainerInfo,
  ));
}


}

// dart format on
