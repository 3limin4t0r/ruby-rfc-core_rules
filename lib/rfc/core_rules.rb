require 'rfc/core_rules/version'

module Rfc # :nodoc:

  ##
  # RFC Core Rules as defined in RFC 5234 Appendix B.1.
  #
  # See {RFC 5234}[https://tools.ietf.org/html/rfc5234]
  #
  module CoreRules

    # A-Z / a-z
    ALPHA          =  /[\x41-\x5A]|[\x61-\x7A]/.freeze

    # 0 / 1
    BIT            =  /0|1/

    # any 7-bit US-ASCII character,
    # excluding NUL
    CHAR           =  /[\x01-\x7F]/.freeze

    # carriage return
    CR             =  /\x0D/.freeze

    # linefeed
    LF             =  /\x0A/.freeze

    # Internet standard newline
    CRLF           =  /#{CR}?#{LF}/.freeze

    # controls
    CTL            =  /[\x00-\x1F]|\x7F/.freeze

    # 0-9
    DIGIT          =  /[\x30-\x39]/.freeze

    # " (Double Quote)
    DQUOTE         =  /\x22/.freeze

    # hexadecimal character
    HEXDIG         =  /#{DIGIT}|[aA]|[bB]|[cC]|[dD]|[eE]|[fF]/.freeze

    # horizontal tab
    HTAB           =  /\x09/.freeze

    # space
    SP             =  /\x20/.freeze

    # white space
    WSP            =  /#{SP}|#{HTAB}/.freeze

    # linear-white-space
    #
    # Use of this linear-white-space rule
    # permits lines containing only white
    # space that are no longer legal in
    # mail headers and have caused
    # interoperability problems in other
    # contexts.
    #
    # Do not use when defining mail
    # headers and use with caution in
    # other contexts.
    LWSP           =  /(#{WSP}|#{CRLF}#{WSP})*/.freeze

    # 8 bits of data
    OCTET          =  /[\x00-\xFF]/.freeze

    # visible (printing) characters
    VCHAR          =  /[\x21-\x7E]/.freeze

  end
end
