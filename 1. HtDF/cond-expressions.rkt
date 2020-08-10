;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname cond-expressions) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; cond-expressions.rkt
(require 2htdp/image)

(define I-WIDE (rectangle 10 5 "solid" "red"))
(define I-TALL (rectangle 5 10 "solid" "red"))
(define I-SQUARE (rectangle 10 10 "solid" "red"))

;; Image -> String
;; Tell if the image is wide, large or square
(check-expect (aspect-ratio I-WIDE) "wide")
(check-expect (aspect-ratio I-TALL) "tall")
(check-expect (aspect-ratio I-SQUARE) "square")

#;
(define (aspect-ratio img) "wide") ; stub

#;
(define (aspect-ratio img)
  (... img))

#;
(define (aspect-ratio img)
  (if (> (image-width img) (image-height img))
      "wide"
      (if (> (image-height img) (image-width img))
          "tall"
          "square")))

; multi-armed conditional, like a switch case: cond
(define (aspect-ratio img)
  (cond [(> (image-width img) (image-height img)) "wide"] ; question answer pairs
        [(> (image-height img) (image-width img)) "tall"]
        [else "square"]))