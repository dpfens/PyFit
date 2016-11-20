cdef class BMREstimator:
    cdef readonly int gender
    cdef double predict(self, double age, double weight, double height)

cdef class HB(BMREstimator):

    cpdef double predict(self, double age, double weight, double height)

cdef class RevisedHB(BMREstimator):

    cpdef double predict(self, double age, double weight, double height)

cdef class MSJ(BMREstimator):

    cpdef double predict(self, double age, double weight, double height)

cdef class RMR:
    cdef readonly int gender
    cdef readonly double age
    cdef readonly double weight
    cdef readonly double height

    cpdef double quick(self)

    cpdef double bsa(self, double bsa)

cpdef double kma(double lbm)


cpdef double cunningham(double lbm)

cdef class TEEEstimator:
    cdef readonly int gender
    cdef readonly int pal

    cdef double predict(self, double age, double weight, double height)

    cpdef double fromActivity(self, double weight, double mets)

cdef class ChildTEE(TEEEstimator):

    cpdef double predict(self, double age, double weight, double height)

cdef class AdultTEE(TEEEstimator):

    cpdef double predict(self, double age, double weight, double height)