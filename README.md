# MathML Schema

## Schema for [MathML 4](https://www.w3.org/TR/MathML4/)



### [rnc](https://github.com/w3c/mathml-schema/tree/main/mathml4/rnc)

The grammar for MathML is developed in Relax NG compact syntax (rnc).


* [`mathml4.rnc`](https://github.com/w3c/mathml-schema/tree/main/mathml4/rnc/mathml4.rnc)

  The main MathML 4 schema.

* [`mathml4-legacy.rnc`](https://github.com/w3c/mathml-schema/tree/main/mathml4/rnc/mathml4-legacy.rnc)

  An extension of `mathml4.rnc` including legacy constructs such as `<malignmark/>`.

* [`mathml4-core.rnc`](https://github.com/w3c/mathml-schema/tree/main/mathml4/rnc/mathml4-core.rnc)

  The schema corresponding to MathML Core 

* [`mathml4-presentation.rnc`](https://github.com/w3c/mathml-schema/tree/main/mathml4/rnc/mathml-presentation4.rnc)

  The schema for Presentation MathML extends on MathML Core but does not include Content MathML.

* [`mathml4-strict-content.rnc`](https://github.com/w3c/mathml-schema/tree/main/mathml4/rnc/mathml4-strict-content.rnc)

  The schema for Strict Content MathML without the Content Elements for specific functions and without Presentation MathML.
  This is the MathML encoding of OpenMath.

* [`mathml4-content.rnc`](https://github.com/w3c/mathml-schema/tree/main/mathml4/rnc/mathml4-content.rnc)

  The schema for Content MathML, an extension of `mathml4-strict-content.rnc`, adding the MathML elements for specific
  functions such as `<sin/>` and containers such as `<set>`.


### [rng](https://github.com/w3c/mathml-schema/tree/main/mathml4/rng)

The Relax NG grammar in XML syntax (rng).

### [dtd](https://github.com/w3c/m<athml-schema/tree/main/mathml4/dtd)

The MathML4 DTD is derived from the MathML3 DTD, updated to MathML 4.
Note that MathML 4 includes an `<a>` element. If this DTD is used to
make a combined HTML/MathML DTD without namespace prefixes a Parameter
Entity may be used to avoid duplicate definitions of `<a>` see the
comments in the file.

The DTD includes legacy constructs so should be broadly equivalent to the
`mathml4-legacy` Relax NG.

### [xsd](https://github.com/w3c/mathml-schema/tree/main/mathml4/xsd)

The MathML 4 grammar in W3C XML Schema syntax (xsd).

This is derived from the MathML3 Schema updated to MathML4.

The Schema includes legacy constructs so should be broadly equivalent to the
`mathml4-legacy` Relax NG.


## Schema for [MathML 3](https://www.w3.org/TR/MathML3/)

[rnc](https://github.com/w3c/mathml-schema/tree/main/mathml3/rnc)

[rng](https://github.com/w3c/mathml-schema/tree/main/mathml3/rng)

[dtd](https://github.com/w3c/mathml-schema/tree/main/mathml3/dtd)

[xsd](https://github.com/w3c/mathml-schema/tree/main/mathml3/xsd)
