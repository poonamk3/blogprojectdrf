node {
    stage 'Checkout'
    checkout scm

    
    stage 'Test'
    sh 'virtualenv env -p python3.10'
    sh '. env/bin/activate'
    sh 'env/bin/pip install -r requirements.txt'
    sh 'env/bin/python3.10 manage.py test --testrunner=blog.tests.test_runners.NoDbTestRunner'

    stage 'Deploy'
    sh './deployment/deploy_prod.sh'

    
}
