pipeline{
	agent any

	tools{
		jdk 'jdk17'
		maven 'maven3'
	}
	stages{
		stage('Git Checkout'){
			steps{
			#manage jenkins> credentials>system> global credetials
			#username,token,ID, 
			# use piplen syntax: git, repo url, credentials
			#git branch:'main', credentialsId	
				
			      }
			
			} 
                 stage('Compile'){
                        steps{
                        #shell command
			sh "mvn compile"

                              }

                        }
		 stage('Test'){
                        steps{
                        #shell command
                        sh "mvn test"

                              }

                        } stage('Compile'){
                        steps{
                        #shell command
                        sh "mvn compile"

                              }

                        } stage('Compile'){
                        steps{
                        #shell command
                        sh "mvn compile"

                              }

                        }




	
	
	
	}

}
