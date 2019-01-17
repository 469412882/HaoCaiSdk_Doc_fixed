.class final Lcom/google/zxing/qrcode/encoder/MaskUtil;
.super Ljava/lang/Object;
.source "MaskUtil.java"


# static fields
.field private static final N1:I = 0x3

.field private static final N2:I = 0x3

.field private static final N3:I = 0x28

.field private static final N4:I = 0xa


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static applyMaskPenaltyRule1(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 2
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 41
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I
    .locals 12
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .param p1, "isHorizontal"    # Z

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "penalty":I
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v1

    .line 197
    .local v1, "iLimit":I
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v2

    .line 198
    .local v2, "jLimit":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v3

    .line 199
    .local v3, "array":[[B
    const/4 v4, 0x0

    move v5, v0

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 199
    .local v0, "i":I
    .local v5, "penalty":I
    .local v6, "bit":I
    :goto_2
    if-ge v0, v1, :cond_7

    .line 200
    const/4 v7, 0x0

    .line 201
    .local v7, "numSameBitCells":I
    const/4 v8, -0x1

    .line 202
    .local v8, "prevBit":I
    move v9, v6

    move v6, v5

    const/4 v5, 0x0

    .line 202
    .local v5, "j":I
    .local v6, "penalty":I
    .local v9, "bit":I
    :goto_3
    const/4 v10, 0x5

    if-ge v5, v2, :cond_5

    .line 203
    if-eqz p1, :cond_2

    aget-object v11, v3, v0

    aget-byte v11, v11, v5

    goto :goto_4

    :cond_2
    aget-object v11, v3, v5

    aget-byte v11, v11, v0

    .line 204
    :goto_4
    move v9, v11

    if-ne v11, v8, :cond_3

    .line 205
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 207
    :cond_3
    if-lt v7, v10, :cond_4

    .line 208
    add-int/lit8 v10, v7, -0x5

    add-int/lit8 v10, v10, 0x3

    add-int/2addr v6, v10

    .line 210
    :cond_4
    const/4 v7, 0x1

    .line 211
    move v8, v9

    .line 202
    .end local v9    # "bit":I
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 214
    .end local v5    # "j":I
    .restart local v9    # "bit":I
    :cond_5
    if-lt v7, v10, :cond_6

    .line 215
    add-int/lit8 v5, v7, -0x5

    add-int/lit8 v5, v5, 0x3

    add-int/2addr v6, v5

    .line 199
    .end local v6    # "penalty":I
    .end local v7    # "numSameBitCells":I
    .end local v8    # "prevBit":I
    .local v5, "penalty":I
    :cond_6
    move v5, v6

    add-int/lit8 v0, v0, 0x1

    move v6, v9

    goto :goto_2

    .line 218
    .end local v0    # "i":I
    .end local v9    # "bit":I
    :cond_7
    return v5
.end method

.method static applyMaskPenaltyRule2(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 11
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "penalty":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v1

    .line 52
    .local v1, "array":[[B
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    .line 53
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    .line 54
    .local v3, "height":I
    const/4 v4, 0x0

    move v5, v0

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 54
    .local v0, "y":I
    .local v5, "penalty":I
    .local v6, "value":I
    :goto_0
    add-int/lit8 v7, v3, -0x1

    if-ge v0, v7, :cond_2

    .line 55
    move v7, v5

    const/4 v5, 0x0

    .line 55
    .local v5, "x":I
    .local v7, "penalty":I
    :goto_1
    add-int/lit8 v8, v2, -0x1

    if-ge v5, v8, :cond_1

    .line 56
    aget-object v8, v1, v0

    aget-byte v8, v8, v5

    .line 57
    move v6, v8

    aget-object v9, v1, v0

    add-int/lit8 v10, v5, 0x1

    aget-byte v9, v9, v10

    if-ne v8, v9, :cond_0

    add-int/lit8 v8, v0, 0x1

    aget-object v8, v1, v8

    aget-byte v8, v8, v5

    if-ne v6, v8, :cond_0

    add-int/lit8 v8, v0, 0x1

    aget-object v8, v1, v8

    add-int/lit8 v9, v5, 0x1

    aget-byte v8, v8, v9

    if-ne v6, v8, :cond_0

    .line 58
    add-int/lit8 v7, v7, 0x1

    .line 55
    .end local v6    # "value":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 54
    .end local v5    # "x":I
    .restart local v6    # "value":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v5, v7

    goto :goto_0

    .line 62
    .end local v0    # "y":I
    .end local v6    # "value":I
    .end local v7    # "penalty":I
    .local v5, "penalty":I
    :cond_2
    mul-int/lit8 v0, v5, 0x3

    return v0
.end method

.method static applyMaskPenaltyRule3(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 11
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "numPenalties":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v1

    .line 73
    .local v1, "array":[[B
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    .line 74
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    .line 75
    .local v3, "height":I
    const/4 v4, 0x0

    move v5, v0

    const/4 v0, 0x0

    .line 75
    .local v0, "y":I
    .local v5, "numPenalties":I
    :goto_0
    if-ge v0, v3, :cond_5

    .line 76
    move v6, v5

    const/4 v5, 0x0

    .line 76
    .local v5, "x":I
    .local v6, "numPenalties":I
    :goto_1
    if-ge v5, v2, :cond_4

    .line 77
    aget-object v7, v1, v0

    .line 78
    .local v7, "arrayY":[B
    add-int/lit8 v8, v5, 0x6

    const/4 v9, 0x1

    if-ge v8, v2, :cond_1

    aget-byte v8, v7, v5

    if-ne v8, v9, :cond_1

    add-int/lit8 v8, v5, 0x1

    aget-byte v8, v7, v8

    if-nez v8, :cond_1

    add-int/lit8 v8, v5, 0x2

    aget-byte v8, v7, v8

    if-ne v8, v9, :cond_1

    add-int/lit8 v8, v5, 0x3

    aget-byte v8, v7, v8

    if-ne v8, v9, :cond_1

    add-int/lit8 v8, v5, 0x4

    aget-byte v8, v7, v8

    if-ne v8, v9, :cond_1

    add-int/lit8 v8, v5, 0x5

    aget-byte v8, v7, v8

    if-nez v8, :cond_1

    add-int/lit8 v8, v5, 0x6

    aget-byte v8, v7, v8

    if-ne v8, v9, :cond_1

    add-int/lit8 v8, v5, -0x4

    .line 86
    invoke-static {v7, v8, v5}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteHorizontal([BII)Z

    move-result v8

    if-nez v8, :cond_0

    add-int/lit8 v8, v5, 0x7

    add-int/lit8 v10, v5, 0xb

    invoke-static {v7, v8, v10}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteHorizontal([BII)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 87
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 89
    :cond_1
    add-int/lit8 v8, v0, 0x6

    if-ge v8, v3, :cond_3

    aget-object v8, v1, v0

    aget-byte v8, v8, v5

    if-ne v8, v9, :cond_3

    add-int/lit8 v8, v0, 0x1

    aget-object v8, v1, v8

    aget-byte v8, v8, v5

    if-nez v8, :cond_3

    add-int/lit8 v8, v0, 0x2

    aget-object v8, v1, v8

    aget-byte v8, v8, v5

    if-ne v8, v9, :cond_3

    add-int/lit8 v8, v0, 0x3

    aget-object v8, v1, v8

    aget-byte v8, v8, v5

    if-ne v8, v9, :cond_3

    add-int/lit8 v8, v0, 0x4

    aget-object v8, v1, v8

    aget-byte v8, v8, v5

    if-ne v8, v9, :cond_3

    add-int/lit8 v8, v0, 0x5

    aget-object v8, v1, v8

    aget-byte v8, v8, v5

    if-nez v8, :cond_3

    add-int/lit8 v8, v0, 0x6

    aget-object v8, v1, v8

    aget-byte v8, v8, v5

    if-ne v8, v9, :cond_3

    add-int/lit8 v8, v0, -0x4

    .line 97
    invoke-static {v1, v5, v8, v0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteVertical([[BIII)Z

    move-result v8

    if-nez v8, :cond_2

    add-int/lit8 v8, v0, 0x7

    add-int/lit8 v9, v0, 0xb

    invoke-static {v1, v5, v8, v9}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteVertical([[BIII)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 98
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 76
    .end local v7    # "arrayY":[B
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 75
    .end local v5    # "x":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    move v5, v6

    goto/16 :goto_0

    .line 102
    .end local v0    # "y":I
    .end local v6    # "numPenalties":I
    .local v5, "numPenalties":I
    :cond_5
    mul-int/lit8 v0, v5, 0x28

    return v0
.end method

.method static applyMaskPenaltyRule4(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 10
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "numDarkCells":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v1

    .line 134
    .local v1, "array":[[B
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    .line 135
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    .line 136
    .local v3, "height":I
    const/4 v4, 0x0

    move v5, v0

    const/4 v0, 0x0

    .line 136
    .local v0, "y":I
    .local v5, "numDarkCells":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 137
    aget-object v6, v1, v0

    .line 138
    .local v6, "arrayY":[B
    move v7, v5

    const/4 v5, 0x0

    .line 138
    .local v5, "x":I
    .local v7, "numDarkCells":I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 139
    aget-byte v8, v6, v5

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 140
    add-int/lit8 v7, v7, 0x1

    .line 138
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 136
    .end local v5    # "x":I
    .end local v6    # "arrayY":[B
    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v5, v7

    goto :goto_0

    .line 144
    .end local v0    # "y":I
    .end local v7    # "numDarkCells":I
    .local v5, "numDarkCells":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v6

    mul-int v0, v0, v6

    .line 145
    .local v0, "numTotalCells":I
    shl-int/lit8 v6, v5, 0x1

    sub-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0xa

    div-int/2addr v6, v0

    .line 146
    .local v4, "fivePercentVariances":I
    mul-int/lit8 v6, v6, 0xa

    return v6
.end method

.method static getDataMaskBit(III)Z
    .locals 5
    .param p0, "maskPattern"    # I
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 156
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid mask pattern: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :pswitch_0
    mul-int v2, p2, p1

    move v3, v0

    .line 182
    .local v3, "temp":I
    rem-int/lit8 v2, v2, 0x3

    add-int v4, p2, p1

    and-int/2addr v4, v1

    add-int/2addr v2, v4

    and-int/2addr v2, v1

    .line 183
    .local v2, "intermediate":I
    goto :goto_0

    .line 177
    .end local v2    # "intermediate":I
    .end local v3    # "temp":I
    :pswitch_1
    mul-int v2, p2, p1

    move v3, v0

    .line 178
    .restart local v3    # "temp":I
    move v3, v2

    and-int/2addr v2, v1

    rem-int/lit8 v4, v3, 0x3

    add-int/2addr v2, v4

    and-int/2addr v2, v1

    .line 179
    .restart local v2    # "intermediate":I
    goto :goto_0

    .line 173
    .end local v2    # "intermediate":I
    .end local v3    # "temp":I
    :pswitch_2
    mul-int v2, p2, p1

    move v3, v0

    .line 174
    .restart local v3    # "temp":I
    move v3, v2

    and-int/2addr v2, v1

    rem-int/lit8 v4, v3, 0x3

    add-int/2addr v2, v4

    .line 175
    .restart local v2    # "intermediate":I
    goto :goto_0

    .line 170
    .end local v2    # "intermediate":I
    .end local v3    # "temp":I
    :pswitch_3
    div-int/lit8 v2, p2, 0x2

    div-int/lit8 v3, p1, 0x3

    add-int/2addr v2, v3

    and-int/2addr v2, v1

    .line 171
    .restart local v2    # "intermediate":I
    goto :goto_0

    .line 167
    .end local v2    # "intermediate":I
    :pswitch_4
    add-int v2, p2, p1

    rem-int/lit8 v2, v2, 0x3

    .line 168
    .restart local v2    # "intermediate":I
    goto :goto_0

    .line 164
    .end local v2    # "intermediate":I
    :pswitch_5
    rem-int/lit8 v2, p1, 0x3

    .line 165
    .restart local v2    # "intermediate":I
    goto :goto_0

    .line 161
    .end local v2    # "intermediate":I
    :pswitch_6
    and-int/lit8 v2, p2, 0x1

    .line 162
    .restart local v2    # "intermediate":I
    goto :goto_0

    .line 158
    .end local v2    # "intermediate":I
    :pswitch_7
    add-int v2, p2, p1

    and-int/2addr v2, v1

    .line 159
    .restart local v2    # "intermediate":I
    nop

    .line 185
    :goto_0
    nop

    .line 187
    if-nez v2, :cond_0

    return v1

    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isWhiteHorizontal([BII)Z
    .locals 4
    .param p0, "rowArray"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 106
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 107
    array-length v1, p0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 108
    move v1, p1

    .line 108
    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, p2, :cond_1

    .line 109
    aget-byte v3, p0, v1

    if-ne v3, v2, :cond_0

    .line 110
    return v0

    .line 108
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "i":I
    :cond_1
    return v2
.end method

.method private static isWhiteVertical([[BIII)Z
    .locals 4
    .param p0, "array"    # [[B
    .param p1, "col"    # I
    .param p2, "from"    # I
    .param p3, "to"    # I

    .line 117
    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 118
    array-length v1, p0

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 119
    move v1, p2

    .line 119
    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, p3, :cond_1

    .line 120
    aget-object v3, p0, v1

    aget-byte v3, v3, p1

    if-ne v3, v2, :cond_0

    .line 121
    return v0

    .line 119
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "i":I
    :cond_1
    return v2
.end method
