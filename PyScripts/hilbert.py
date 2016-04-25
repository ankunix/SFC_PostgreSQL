
import math

def graycode(x):
    return x^(x>>1)

def igraycode(x):
    """
        Inverse gray code.
    """
    if x == 0:
        return x
    m = int(math.ceil(math.log(x, 2)))+1
    i, j = x, 1
    while j < m:
        i = i ^ (x>>j)
        j += 1
    return i

def bits(n, width):
    """
        Convert n to a list of bits of length width.
    """
    assert n < 2**width
    bin = []
    for i in range(width):
        bin.insert(0, 1 if n&(1<<i) else 0)
    return bin

def bits2int(bits):
    """
        Convert a list of bits to an integer.
    """
    n = 0
    for p, i in enumerate(reversed(bits)):
        n += i*2**p
    return n

def rrot(x, i, width):
    """
        Right bit-rotation.

        width: the bit width of x.
    """
    assert x < 2**width
    i = i%width
    x = (x>>i) | (x<<width-i)
    return x&(2**width-1)


def lrot(x, i, width):
    """
        Left bit-rotation.

        width: the bit width of x.
    """
    assert x < 2**width
    i = i%width
    x = (x<<i) | (x>>width-i)
    return x&(2**width-1)


def tsb(x, width):
    """
        Trailing set bits.
    """
    assert x < 2**width
    i = 0
    while x&1 and i <= width:
        x = x >> 1
        i += 1
    return i


def setbit(x, w, i, b):
    """
        Sets bit i in an integer x of width w to b.
        b must be 1 or 0
    """
    assert b in [1, 0]
    assert i < w
    if b:
        return x | 2**(w-i-1)
    else:
        return x & ~2**(w-i-1)


def bitrange(x, width, start, end):
    """
        Extract a bit range as an integer.
        (start, end) is inclusive lower bound, exclusive upper bound.
    """
    return x >> (width-end) & ((2**(end-start))-1)

def transform(entry, direction, width, x):
    assert x < 2**width
    assert entry < 2**width
    return rrot((x^entry), direction+1, width)


def itransform(entry, direction, width, x):
    """
        Inverse transform - we simply reverse the operations in transform.
    """
    assert x < 2**width
    assert entry < 2**width
    return lrot(x, direction+1, width)^entry
    # There is an error in the Hamilton paper's formulation of the inverse
    # transform in Lemma 2.12. The correct restatement as a transform is as follows:
    #return transform(rrot(entry, direction+1, width), width-direction-2, width, x)


def direction(x, n):
    assert x < 2**n
    if x == 0:
        return 0
    elif x%2 == 0:
        return tsb(x-1, n)%n
    else:
        return tsb(x, n)%n


def entry(x):
    if x == 0:
        return 0
    else:
        return graycode(2*((x-1)/2))


def hilbert_point(dimension, order, h):
    """
        Convert an index on the Hilbert curve of the specified dimension and
        order to a set of point coordinates.
    """
    #    The bit widths in this function are:
    #        p[*]  - order
    #        h     - order*dimension
    #        l     - dimension
    #        e     - dimension
    hwidth = order*dimension
    e, d = 0, 1
    p = [0]*dimension
    for i in range(order):
        w = bitrange(h, hwidth, i*dimension, i*dimension+dimension)
        l = graycode(w)
        l = itransform(e, d, dimension, l)
        for j in range(dimension):
            b = bitrange(l, dimension, j, j+1)
            p[j] = setbit(p[j], order, i, b)
        e = e ^ lrot(entry(w), d+1, dimension)
        d = (d + direction(w, dimension) + 1)%dimension
    return p


def hilbert_index(dimension, order, p):
    h, e, d = 0, 0, 1
    for i in range(order):
        l = 0
        for x in range(dimension):
            b = bitrange(p[dimension-x-1], order, i, i+1)
            l |= b<<x
        l = transform(e, d, dimension, l)
        w = igraycode(l)
        e = e ^ lrot(entry(w), d+1, dimension)
        d = (d + direction(w, dimension) + 1)%dimension
        h = (h<<dimension)|w
    return h


class Hilbert:
    def __init__(self, dimension, order):
        self.dimension, self.order = dimension, order

    @classmethod
    def fromSize(self, dimension, size):
        """
            Size is the total number of points in the curve.
        """
        x = math.log(size, 2)
        if not float(x)/dimension == int(x)/dimension:
            raise ValueError("Size does not fit Hilbert curve of dimension %s."%dimension)
        return Hilbert(dimension, int(x/dimension))

    def __len__(self):
        return 2**(self.dimension*self.order)

    def __getitem__(self, idx):
        if idx >= len(self):
            raise IndexError
        return self.point(idx)

    def dimensions(self):
        """
            Size of this curve in each dimension.
        """
        return [int(math.ceil(len(self)**(1/float(self.dimension))))]*self.dimension

    def index(self, p):
        return hilbert_index(self.dimension, self.order, p)

    def point(self, idx):
        return hilbert_point(self.dimension, self.order, idx)
