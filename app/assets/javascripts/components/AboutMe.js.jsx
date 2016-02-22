class AboutMe extends React.Component {
  constructor(props){
    super(props);
    this.refreshHobbies = this.refreshHobbies.bind(this);
    this.toggleHobbies = this.toggleHobbies.bind(this);
    this.state = {hobbies: []}
  }
  componentDidMount(){
    this.refreshHobbies()
  }
  refreshHobbies(){
    $.ajax({
      url: '/hobbies',
      type: 'GET'
    }).success(data => {
      this.setState({hobbies: data.hobbies})
    })
  }
  toggleHobbies(){
    this.setState({ hobbyToggle: !this.state.hobbyToggle})
  }
  hobbyDropDown(){
      if(this.state.hobbyToggle){
        let hobbies = this.state.hobbies.map( hobby => {
          debugger
          return(<Hobby title={hobby.title} description={hobby.description}/>)
        })
        return(hobbies)
      }
    }
  render(){
    return(
      <div className='col s6 center-align'>
        <div onClick={this.toggleHobbies} className='blue lighten-3'>
          Hobbies
        </div>
          {this.hobbyDropDown()}
      </div>
    )
  }
}
