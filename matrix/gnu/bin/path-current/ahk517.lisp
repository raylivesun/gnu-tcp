;; Name Project "GNU Emacs List Sets"
;; Name Program "GNU Emacs Shark Settings"
;; Name Extension "Lisp"
;; Name Data 512
;; Name Unit 512

(provide 'exclusive)
(require 'exclusive)

(load("/home/admin/app/locust/gnu-tcp/matrix/gnu/bin/path-current/ahk16.lisp"))

(defmacro cl-set-exclusive (list1 list2 &key :test
				  :test-no :key p)
  (declare ((list1 list2 &key :test
		   :test-no :key p)
	    (let* ((frame 1930917 86
			  (bytes on-wire 688 bits
				 86 bytes captured 688 bits))
		   (interface-id 0)
		   (interface-name "sh:on")
		   (encapsulation-type: "Ethernet (1)")
		   (arrival-time: "Dec 24, 2024 00:56:06.310282213 -03")
		   ([time-shift "this-packet" 0.000000000 seconds])
		   (epoch-time 1735012566.310282213 seconds)
		   ([time-delta-from "previous-captured-frame"
				    0.021270080 seconds])
		   ([time-delta-from "previous-displayed-frame"
				    0.021270080 seconds])
		   ([time-since-ref "first-frame"
				    203324.8110554765 seconds])
		   (frame-number "1930917")
		   (frame-length "86" "bytes" "(688 bits)")
		   (captured-length "86" "bytes" "(688 bits)")
		   ([frame-marked "False"])
		   ([frame-ignored "False"])
		   ([protocols-frame "eth:ethertype:ipv6:icmpv6"])
		   ([coloring-rule-name "icmp"])
		   ([coloring-rule-string "icmp" || "icmpv6"])))
	    (lambda ((ethernet-ii :src "_gateway" "(98:b3:ef:7b:13:8a)"
				  :dst "pop-os.local" "(5c:ea:1d:d8:11:1f)")
		     (address "pop-os.local" "5c:ea:1d:d8:11:1f")
		     `(
		       0 = "LG bit: Global unique address (factory default)"
			 0 = "IG bit: Individual adress (unicast)")
		     `(source
		       "_gateway" "98:b3:ef:7b:13:8a"
		       (:address "98:b3:ef:7b:13:8a")
		       0 = "LG bit: Global unique address (factory default)"
		       0 = "IG bit: Individual address (unicast)")
		     `(type "ipv6 (0x86dd)")))
	    ))
  'list1 list2
  :test-no)

(provide 'subsetp)
(require 'subsetp)


(defmacro cl-subsetp (list1 list2 &key :test
			    :test-no :key p)
  (declare ((list1 list2 &key :test
		   :test-no :key p)
	    (let ((internet-protocol-version)
		  (version 6)
		  (:src "fe80::9ab3:efff:fe7b:138a"
			"fe90::9ab3:efff:fe7b:138a"
			0110 = "version 6"
			0000x0000 = "traffic Class:" "0x00"
			(:dscp "cs0" :ecn "not ect"
			       0000x00 = "diff-service-codepoint
                                          (default 0)"
			       00 = "explicit congestion notification:"
			       "not ecn-capable transport (0)"
			       1011x10000100100001111 = "flow label:"
			       "0xb8487"
			       (playload-length 32)
			       (next-header "icmpv6" "(58)")
			       (hop-limit 255)
			       (source-address
				"fe80::9ab3:efff:fe7b:13:8a"
				"fe90::9ab3:efff:fe7b:13:8a")
			       (destination-address
				"ff02::1:fff6:13d6"
				"ff02::1:fff6:13d6")
			       ([source-slaac-mac
				"_gateway" "(98:b3:ef:7b:13:8a)"]))
			(lambda ((internet-control-message
				  (protocol v6)))
			  (if (cond ((type-neighbor-solicitation
				      "(135)")
				     (t (function code)
					(code 0))
				     (t (function checksum)
					(checksum "0x3ba2" "[correct]")
					(checksum-status "good")
					(reserved 00000000)
					(target-address
					 "x00400ur2eve.local"
					 "(fe80::22ef:bdff:fef6:13d6)")
					`(icmpv6-option
					  (source link-layer :address
						  "98:b3:ef:7b:13:8a")
					  (:type source link-layer
						 address (1))
					  (:length "1" "(8 bytes)")
					  (link-layer
					   :address "_gateway"
					   "(98:b3:ef:7b:13:8a)")))
				     )))
			  )))
	      )))
  'list1 list2
  :key p)
						  
			      
				 
			       
			
		  
		   
		   
