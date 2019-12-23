node(){
	stage('构建'){
		//test
		echo 'build'
	}
	stage('测试'){
		// test
		echo 'test'
		 bat label: '', script: 'robot -P . ../cathytest/homework5/course'
		//sh 'echo case001>>suite.txt'
	}
	stage('部署'){
		//test
		echo 'deploy'
	}
	stage('交付'){
		//test
		echo 'delivery'
	}

}