class Hobby extends React.Component {
  constructor(props){
    super(props);
    this.toggleDescription = this.toggleDescription.bind(this)
    this.showDescription = this.showDescription.bind(this)
    this.state = {description: false}
  }
  toggleDescription(){
    this.setState({description: !this.state.description})
  }
  showDescription(){
    if(this.state.description){
      return(
        <div>
          {this.props.description}
        </div>
      )
    }
  }
  render(){
    let baseClasses = `card blue lighten-${this.props.rank}`
    // let cardClass = () => {
    //   if(this.state.description){
    //     return(baseClasses + ' small')
    //   }else {
    //     return(baseClasses)
    //   }
    // }
    return(
      <div className={baseClasses}>
        <div onClick={this.toggleDescription} className='center-align'>
          {this.props.title}
        </div>
        {this.showDescription()}
      </div>
    )
  }
}
