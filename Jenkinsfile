node(){
	stage('����'){
		//test
		echo 'build'
		checkout scm
	}
	stage('����'){
		// test
		echo 'test'
		 bat label: '', script: 'robot -P . ../cathytest/homework5/course'
		//sh 'echo case001>>suite.txt'
	}
	stage('����'){
		//test
		echo 'deploy'
	}
	stage('����'){
		//test
		echo 'delivery'
	}

}