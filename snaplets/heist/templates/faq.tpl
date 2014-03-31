<apply template="base">
  <!-- Title -->
  <bind tag="titletag">FAQ</bind>
  <!-- Styles -->
  <bind tag="styles"><link rel="stylesheet" href="/static/css/screen.css" type="text/css" media="screen" /></bind>
  <!-- Nav -->
  <bind tag="navtop">
  </bind>
  <!-- Body -->
  <bind tag="bodyContent">
    <div class="container" style="width:800px">
    <div class="text-center container" style="margin-top: -10px; margin-bottom: 10px; border-radius: 10px;">
      <h1 style="margin-top:10px; color: #555;">Frequently Asked Questions</h1>  
    </div>
      <div class="panel-group" id="accordion">

        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title">
              <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                What is SolidTranslate.com?
              </a>
            </h4>
          </div>
          <div id="collapseOne" class="panel-collapse collapse in">
            <div class="panel-body">
              SolidTranslate is an innovative Software-as-a-service that translates SolidWorks parts from newer versions earlier versions using the SolidWorks API. This means that the output file contains an identical feature tree to the input file.
            </div>
          </div>
        </div>

        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title">
              <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                When will SolidTranslate be ready and what features will it support?
              </a>
            </h4>
          </div>
          <div id="collapseTwo" class="panel-collapse collapse">
            <div class="panel-body">
              The beta version should be ready in the next month. Please sign up for our <a href="http://www.solidtranslate.com">mailing list</a> to be notified. A list of supported features and items is coming soon.
            </div>
          </div>
        </div>

        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title">
              <a class="accordion-toggle" data-toggle="collapse"
                 data-parent="#accordion" href="#collapseThree">
                What steps will be involved in translating a file at SolidTranslate.com?
              </a>
            </h4>
          </div>
          <div id="collapseThree" class="panel-collapse collapse">
            <div class="panel-body">
              <ol>
                <li>Register for an account and enter a credit card in your profile page.
                <li>Create a job by specifying the input and output version and uploading files for translation.
                <li>Submit your job for translation.
                <li>Once translation is completed, you may download the translated files.
              </ol>
            </div>
          </div>
        </div>

        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title">
              <a class="accordion-toggle" data-toggle="collapse"
                 data-parent="#accordion" href="#collapseFour">
                What is your turnaround time for a translation job?
              </a>
            </h4>
          </div>
          <div id="collapseFour" class="panel-collapse collapse">
            <div class="panel-body">
              The turnaround time is dependent on the following:
              <ol>
                <li>The number of jobs in the queue</li>
                <li>The number of jobs in the queue</li>
                <li>The complexity of the models</li>
                <li>The number of workers available available </li>
              </ol> If the queue is empty and a job contains a single part of low or medium complexity, it would be available in less than ten minutes. 
            </div>
          </div>
        </div>

        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title">
              <a class="accordion-toggle" data-toggle="collapse"
                 data-parent="#accordion" href="#collapseFive">
                How much does a translation cost?
              </a>
            </h4>
          </div>
          <div id="collapseFive" class="panel-collapse collapse">
            <div class="panel-body">
              The job creation wizard will state exactly what each file will cost if translated successfully. Each successfully translated file has a flat fee plus an additional fee determined by the file size. Small files will cost less than 10 USD to translate. Our official pricing will be announced when beta is released.
            </div>
          </div>
        </div>

        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title">
              <a class="accordion-toggle" data-toggle="collapse"
                 data-parent="#accordion" href="#collapseSix">
                Will I be charged if a model fails to translate?
              </a>
            </h4>
          </div>
          <div id="collapseSix" class="panel-collapse collapse">
            <div class="panel-body">
              No, we do not charge you if our software fails to translate your model. A successful translation is defined as one in which all of the body features have been recreated exactly. A body feature is a feature that modifies a body. Of course, a part contains much more than just body features, and we will translate most of those items as well. A full list of supported items is coming soon.
            </div>
          </div>
        </div>

        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title">
              <a class="accordion-toggle" data-toggle="collapse"
                 data-parent="#accordion" href="#collapseSeven">
                How do you know if a model has been translated properly?
              </a>
            </h4>
          </div>
          <div id="collapseSeven" class="panel-collapse collapse">
            <div class="panel-body">
              First, we do not even try to translate parts with unsupported features. Second, for models in which we did attempt to translate all body features, we run numerous tests to ensure that the geometry in output and input models is identical.
            </div>
          </div>
        </div>

        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title">
              <a class="accordion-toggle" data-toggle="collapse"
                 data-parent="#accordion" href="#collapseEight">
                Is the CAD data I upload and my credit information secure?
              </a>
            </h4>
          </div>
          <div id="collapseEight" class="panel-collapse collapse">
            <div class="panel-body">
              Yes. All uploads are protected using SSL security. All payment transactions occur through the third party payment system Stripe. We do not store your credit card on our servers. If you wish to remove a credit card from your account you may do so at any time. All files you upload are automatically deleted after 30 days unless you manually delete them beforehand.
            </div>
          </div>
        </div>
      </div>
    </div>
  </bind>
</apply>
