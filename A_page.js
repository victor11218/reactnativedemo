/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow strict-local
 */

import React, {Component} from 'react';
import {
    Text, 
    View, 
    TouchableOpacity
} from 'react-native';

export default class Apage extends Component {
    static navigationOptions = {
        title: "A Page",
    };
    render() {
        const { navigate } = this.props.navigation;
        return (
            <View>
                <TouchableOpacity onPress={()=>{navigate('pb');}}>
                    <View
                        style = {{
                            width: "100%", 
                            height: 50, 
                            justifyContent:'center',
                            backgroundColor: '#6cd6c1',
                            alignItems: 'center'
                        }}>
                            <Text>点我去B页面</Text>
                    </View>
                </TouchableOpacity>
            </View>
        )
    }
}