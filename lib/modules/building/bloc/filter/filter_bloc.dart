import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../models/building_filter.dart';
import '../../models/owner.dart';
import '../../models/selected_owner.dart';
import '../../repository/filter_repository.dart';

part 'filter_event.dart';
part 'filter_state.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc(this._filterRepository)
      : super(FilterInitial(
          buildingFilter: BuildingFilter.initial(),
        )) {
    on<OwnersFetched>(_fetchOwners);
    on<SelectedOwnerChanged>(_changeSelectedOwner);
  }

  final FilterRepository _filterRepository;

  Future<void> _fetchOwners(OwnersFetched event, emit) async {
    final List<Owner> owners = await _filterRepository.retrieveFilterData();
    emit(
      FilterSuccess(
        buildingFilter: state.buildingFilter.copyWith(owners: owners),
      ),
    );
  }

  void _changeSelectedOwner(SelectedOwnerChanged event, emit) {
    emit(
      FilterSuccess(
        buildingFilter: state.buildingFilter.copyWith(
          selectedOwner: event.selectedOwner,
        ),
      ),
    );
  }
}
