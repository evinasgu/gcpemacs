;;; gcpemacs-test.el --- Tests for gcpemacs

(require 'ert)
(require 'cl)
(require 'gcpemacs-serverless)

(setq gcloud-functions-list-command "gcloud functions list")

;; I will need to mock call-command-without-headers to avoid side-effects
(ert-deftest call-command-without-headers-test ()
  (should (equal (call-command-without-headers gcloud-functions-list-command)
		 (list "testing-first-function  ACTIVE  HTTP Trigger  us-central1"))))


;;; gcpemacs-test.el ends here
