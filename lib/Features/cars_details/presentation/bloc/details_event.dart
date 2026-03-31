abstract class DetailsEvent {}
class getVinEvent extends DetailsEvent {

  dynamic vin;
  getVinEvent(this.vin);
}
class getDetailsEvent extends DetailsEvent {


}