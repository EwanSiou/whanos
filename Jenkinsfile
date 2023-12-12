pipeline {
    agent any
    stages {
        stage('Check Whanos Compatibility') {
            steps {
                script {
                    if (fileExists('Makefile')) {
                        echo "Repository is Whanos-compatible for C"
                    } else {
                        error "Repository is not Whanos-compatible for C"
                    }

                    if (fileExists('app/pom.xml')) {
                        echo "Repository is Whanos-compatible for Java"
                    } else {
                        error "Repository is not Whanos-compatible for Java"
                    }

                    if (fileExists('package.json')) {
                        echo "Repository is Whanos-compatible for JavaScript"
                    } else {
                        error "Repository is not Whanos-compatible for JavaScript"
                    }

                    if (fileExists('requirements.txt')) {
                        echo "Repository is Whanos-compatible for Python"
                    } else {
                        error "Repository is not Whanos-compatible for Python"
                    }

                    if (fileExists('app/main.bf')) {
                        echo "Repository is Whanos-compatible for Befunge"
                    } else {
                        error "Repository is not Whanos-compatible for Befunge"
                    }
                }
            }
        }
    }
}

def fileExists(filePath) {
    return fileExistsOrNot(filePath)
}

def fileExistsOrNot(String path) {
    def filePathsToCheck = [path.replace('\\', '/'), path] // Vérifie d'abord avec le chemin modifié puis avec le chemin d'origine
    def fileFound = false
    for (String filePath : filePathsToCheck) {
        if (fileExists(filePath)) {
            fileFound = true
            break // Sort de la boucle si le fichier est trouvé
        }
    }
    return fileFound
}





// @Library('whanos-lib') _
// pipeline {
//     agent any 
//     stages {
//         stage('Hello') { 
//             steps {
//                 helloWord()
//             }
//         }
//         stage('Hello2') { 
//             steps {
//                 echo 'Hello word2'
//             }
//         }
//         stage('Hello3') { 
//             steps {
//                 echo 'Hello word3'
//             }
//         }
//     }
// }