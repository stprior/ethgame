import React, { Component } from 'react';
import { ChatFeed, Message } from 'react-chat-ui'

class GameView extends Component {
  constructor(props)
  {
    super(props);
    this.state = {
      messages : [
        (new Message({id: 1,message: "Welcome!"})),
        ],
      is_typing : false
    };
  }
  
  _pushMessage(recipient, message) {
    var prevState = this.state
    prevState.messages.push(new Message({id: recipient, message: message}));
    this.setState(this.state)
  }

  _onMessageSubmit(e) {
    var input = this.refs.message;
    e.preventDefault();
    if (!input.value) {return false;}
    this._pushMessage(this.state.curr_user, input.value)
    input.value = '';
  }

  render() {
    return (
        <div className="GameView">
                <ChatFeed
                  messages={this.state.messages} // Boolean: list of message objects
                  isTyping={this.state.is_typing} // Boolean: is the recipient typing
                  hasInputField={false} // Boolean: use our input, or use your own
                  bubblesCentered={false} //Boolean should the bubbles be centered in the feed?
                  // JSON: Custom bubble styles
                  bubbleStyles={
                    {
                      text: {
                        fontSize: 20
                      },
                      chatbubble: {
                        borderRadius: 30,
                        padding: 10
                      }
                    }
                  }
                />
            <form onSubmit={this._onMessageSubmit.bind(this)}>
              <input ref="message" placeholder="Type a message..." className="message-input" />
            </form>
        </div>
    );
  }
}


export default GameView;