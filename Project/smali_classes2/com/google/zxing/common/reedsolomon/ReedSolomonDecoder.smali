.class public final Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
.super Ljava/lang/Object;
.source "ReedSolomonDecoder.java"


# instance fields
.field private final field:Lcom/google/zxing/common/reedsolomon/GenericGF;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V
    .locals 0
    .param p1, "field"    # Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 47
    return-void
.end method

.method private findErrorLocations(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)[I
    .locals 5
    .param p1, "errorLocator"    # Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 145
    .local v0, "numErrors":I
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v1

    .line 146
    move v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 147
    new-array v1, v2, [I

    const/4 v3, 0x0

    invoke-virtual {p1, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v2

    aput v2, v1, v3

    return-object v1

    .line 149
    :cond_0
    new-array v1, v0, [I

    .line 150
    .local v1, "result":[I
    const/4 v3, 0x0

    .line 151
    .local v3, "e":I
    nop

    .line 151
    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getSize()I

    move-result v4

    if-ge v2, v4, :cond_2

    if-ge v3, v0, :cond_2

    .line 152
    invoke-virtual {p1, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->evaluateAt(I)I

    move-result v4

    if-nez v4, :cond_1

    .line 153
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v4, v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v4

    aput v4, v1, v3

    .line 154
    add-int/lit8 v3, v3, 0x1

    .line 151
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v2    # "i":I
    :cond_2
    if-eq v3, v0, :cond_3

    .line 158
    new-instance v2, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v4, "Error locator degree does not match number of roots"

    invoke-direct {v2, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_3
    return-object v1
.end method

.method private findErrorMagnitudes(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;[I)[I
    .locals 10
    .param p1, "errorEvaluator"    # Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .param p2, "errorLocations"    # [I

    const/4 v0, 0x0

    .line 165
    .local v0, "s":I
    array-length v1, p2

    .line 166
    move v0, v1

    new-array v1, v1, [I

    .line 167
    .local v1, "result":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 167
    .local v3, "i":I
    .local v4, "term":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 168
    iget-object v5, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v6, p2, v3

    invoke-virtual {v5, v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v5

    .line 169
    .local v5, "xiInverse":I
    const/4 v6, 0x1

    .line 170
    .local v6, "denominator":I
    move v7, v4

    const/4 v4, 0x0

    .line 170
    .local v4, "j":I
    .local v7, "term":I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 171
    if-eq v3, v4, :cond_1

    .line 176
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v9, p2, v4

    invoke-virtual {v8, v9, v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v8

    .line 177
    move v7, v8

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_0

    or-int/lit8 v8, v7, 0x1

    goto :goto_2

    :cond_0
    and-int/lit8 v8, v7, -0x2

    .line 178
    .local v8, "termPlus1":I
    :goto_2
    iget-object v9, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v9, v6, v8}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v6

    .line 170
    .end local v8    # "termPlus1":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 181
    .end local v4    # "j":I
    :cond_2
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {p1, v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->evaluateAt(I)I

    move-result v8

    iget-object v9, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 182
    invoke-virtual {v9, v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v9

    .line 181
    invoke-virtual {v4, v8, v9}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v4

    aput v4, v1, v3

    .line 183
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getGeneratorBase()I

    move-result v4

    if-eqz v4, :cond_3

    .line 184
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v8, v1, v3

    invoke-virtual {v4, v8, v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v4

    aput v4, v1, v3

    .line 167
    .end local v5    # "xiInverse":I
    .end local v6    # "denominator":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_0

    .line 187
    .end local v3    # "i":I
    .end local v7    # "term":I
    :cond_4
    return-object v1
.end method

.method private runEuclideanAlgorithm(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;Lcom/google/zxing/common/reedsolomon/GenericGFPoly;I)[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 12
    .param p1, "a"    # Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .param p2, "b"    # Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .param p3, "R"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
        }
    .end annotation

    .line 91
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 92
    move-object v0, p1

    .line 93
    .local v0, "temp":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object p1, p2

    .line 94
    move-object p2, v0

    .line 97
    .end local v0    # "temp":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :cond_0
    move-object v0, p1

    .line 98
    .local v0, "rLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object v1, p2

    .line 99
    .local v1, "r":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v2

    .line 100
    .local v2, "tLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getOne()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v3

    .line 103
    .local v3, "t":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :goto_0
    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v4

    div-int/lit8 v5, p3, 0x2

    if-lt v4, v5, :cond_4

    .line 104
    move-object v4, v0

    .line 105
    .local v4, "rLastLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object v5, v2

    .line 106
    .local v5, "tLastLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object v0, v1

    .line 107
    move-object v2, v3

    .line 110
    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 112
    new-instance v6, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v7, "r_{i-1} was zero"

    invoke-direct {v6, v7}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 114
    :cond_1
    move-object v1, v4

    .line 115
    iget-object v6, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v6

    .line 116
    .local v6, "q":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v7

    .line 117
    .local v7, "denominatorLeadingTerm":I
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v8, v7}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v8

    .line 118
    .local v8, "dltInverse":I
    :goto_1
    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v9

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v10

    if-lt v9, v10, :cond_2

    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v9

    if-nez v9, :cond_2

    .line 119
    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v9

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v10

    sub-int/2addr v9, v10

    .line 120
    .local v9, "degreeDiff":I
    iget-object v10, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v11

    invoke-virtual {v10, v11, v8}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v10

    .line 121
    .local v10, "scale":I
    iget-object v11, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v11, v9, v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v6

    .line 122
    invoke-virtual {v0, v9, v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v1

    .line 123
    .end local v9    # "degreeDiff":I
    .end local v10    # "scale":I
    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {v6, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v3

    .line 127
    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v9

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v10

    if-lt v9, v10, :cond_3

    .line 128
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Division algorithm failed to reduce polynomial?"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 130
    .end local v4    # "rLastLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v5    # "tLastLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v6    # "q":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v7    # "denominatorLeadingTerm":I
    .end local v8    # "dltInverse":I
    :cond_3
    goto/16 :goto_0

    .line 132
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v5

    move v6, v4

    .line 133
    .local v6, "sigmaTildeAtZero":I
    move v6, v5

    if-nez v5, :cond_5

    .line 134
    new-instance v4, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v5, "sigmaTilde(0) was zero"

    invoke-direct {v4, v5}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 137
    :cond_5
    iget-object v5, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v5, v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v5

    .line 138
    .local v5, "inverse":I
    invoke-virtual {v3, v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v7

    .line 139
    .local v7, "sigma":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    invoke-virtual {v1, v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v8

    .line 140
    .local v8, "omega":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    aput-object v7, v9, v4

    const/4 v4, 0x1

    aput-object v8, v9, v4

    return-object v9
.end method


# virtual methods
.method public decode([II)V
    .locals 17
    .param p1, "received"    # [I
    .param p2, "twoS"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 59
    move/from16 v2, p2

    new-instance v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v4, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v3, v4, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 60
    .local v3, "poly":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    new-array v4, v2, [I

    .line 61
    .local v4, "syndromeCoefficients":[I
    const/4 v5, 0x1

    .line 62
    .local v5, "noError":Z
    const/4 v6, 0x0

    move v7, v5

    const/4 v5, 0x0

    .line 62
    .local v5, "i":I
    .local v7, "noError":Z
    :goto_0
    if-ge v5, v2, :cond_1

    .line 63
    iget-object v8, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v9, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v9}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getGeneratorBase()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v8, v9}, Lcom/google/zxing/common/reedsolomon/GenericGF;->exp(I)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->evaluateAt(I)I

    move-result v8

    .line 64
    .local v8, "eval":I
    add-int/lit8 v9, v2, -0x1

    sub-int/2addr v9, v5

    aput v8, v4, v9

    .line 65
    if-eqz v8, :cond_0

    .line 66
    const/4 v7, 0x0

    .line 62
    .end local v8    # "eval":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 69
    .end local v5    # "i":I
    :cond_1
    if-eqz v7, :cond_2

    .line 70
    return-void

    .line 72
    :cond_2
    new-instance v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v8, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v5, v8, v4}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 73
    .local v5, "syndrome":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    iget-object v8, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 74
    const/4 v9, 0x1

    invoke-virtual {v8, v2, v9}, Lcom/google/zxing/common/reedsolomon/GenericGF;->buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v8

    invoke-direct {v0, v8, v5, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->runEuclideanAlgorithm(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;Lcom/google/zxing/common/reedsolomon/GenericGFPoly;I)[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v8

    const/4 v10, 0x0

    .line 75
    .local v10, "sigmaOmega":[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object v10, v8

    aget-object v8, v8, v6

    .line 76
    .local v8, "sigma":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    aget-object v11, v10, v9

    .line 77
    .local v11, "omega":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    invoke-direct {v0, v8}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->findErrorLocations(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)[I

    move-result-object v12

    .line 78
    .local v12, "errorLocations":[I
    invoke-direct {v0, v11, v12}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->findErrorMagnitudes(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;[I)[I

    move-result-object v13

    .line 79
    .local v13, "errorMagnitudes":[I
    const/4 v14, 0x0

    .line 79
    .local v6, "i":I
    .local v14, "position":I
    :goto_1
    array-length v15, v12

    if-ge v6, v15, :cond_4

    .line 80
    array-length v15, v1

    sub-int/2addr v15, v9

    iget-object v9, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v0, v12, v6

    invoke-virtual {v9, v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->log(I)I

    move-result v0

    sub-int/2addr v15, v0

    move v0, v14

    .line 81
    .end local v14    # "position":I
    .local v0, "position":I
    move v14, v15

    .line 81
    .end local v0    # "position":I
    .restart local v14    # "position":I
    if-gez v15, :cond_3

    .line 82
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v9, "Bad error location"

    invoke-direct {v0, v9}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_3
    aget v0, v1, v14

    aget v9, v13, v6

    invoke-static {v0, v9}, Lcom/google/zxing/common/reedsolomon/GenericGF;->addOrSubtract(II)I

    move-result v0

    aput v0, v1, v14

    .line 79
    .end local v14    # "position":I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    const/4 v9, 0x1

    goto :goto_1

    .line 86
    .end local v6    # "i":I
    :cond_4
    return-void
.end method
