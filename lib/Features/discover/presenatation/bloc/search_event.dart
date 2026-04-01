abstract class SearchEvent {}
class getSearched extends SearchEvent{
  var query;
  getSearched(this.query);
}