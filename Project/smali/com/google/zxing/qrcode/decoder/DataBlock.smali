.class final Lcom/google/zxing/qrcode/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 0
    .param p1, "numDataCodewords"    # I
    .param p2, "codewords"    # [B

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    .line 33
    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    .line 34
    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;
    .locals 17
    .param p0, "rawCodewords"    # [B
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-object/from16 v0, p0

    .line 51
    array-length v1, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 57
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v1

    .line 60
    .local v1, "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    const/4 v2, 0x0

    .line 61
    .local v2, "totalBlocks":I
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    const/4 v4, 0x0

    .line 62
    .local v4, "ecBlockArray":[Lcom/google/zxing/qrcode/decoder/Version$ECB;
    move-object v4, v3

    array-length v5, v3

    const/4 v6, 0x0

    move v7, v2

    const/4 v2, 0x0

    .line 62
    .end local v2    # "totalBlocks":I
    .local v7, "totalBlocks":I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v8, v3, v2

    .line 63
    .local v8, "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v9

    add-int/2addr v7, v9

    .line 62
    .end local v8    # "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_1
    new-array v2, v7, [Lcom/google/zxing/qrcode/decoder/DataBlock;

    .line 68
    .local v2, "result":[Lcom/google/zxing/qrcode/decoder/DataBlock;
    const/4 v3, 0x0

    .line 69
    .local v3, "numResultBlocks":I
    array-length v5, v4

    move v8, v3

    const/4 v3, 0x0

    .line 69
    .end local v3    # "numResultBlocks":I
    .local v8, "numResultBlocks":I
    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v9, v4, v3

    .line 70
    .local v9, "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    move v10, v8

    const/4 v8, 0x0

    .line 70
    .local v8, "i":I
    .local v10, "numResultBlocks":I
    :goto_2
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v11

    if-ge v8, v11, :cond_2

    .line 71
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getDataCodewords()I

    move-result v11

    .line 72
    .local v11, "numDataCodewords":I
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v12

    add-int/2addr v12, v11

    .line 73
    .local v12, "numBlockCodewords":I
    add-int/lit8 v13, v10, 0x1

    .line 73
    .local v13, "numResultBlocks":I
    new-instance v14, Lcom/google/zxing/qrcode/decoder/DataBlock;

    new-array v15, v12, [B

    invoke-direct {v14, v11, v15}, Lcom/google/zxing/qrcode/decoder/DataBlock;-><init>(I[B)V

    aput-object v14, v2, v10

    .line 70
    .end local v10    # "numResultBlocks":I
    .end local v11    # "numDataCodewords":I
    .end local v12    # "numBlockCodewords":I
    add-int/lit8 v8, v8, 0x1

    move v10, v13

    goto :goto_2

    .line 69
    .end local v8    # "i":I
    .end local v9    # "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    .end local v13    # "numResultBlocks":I
    .restart local v10    # "numResultBlocks":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v8, v10

    goto :goto_1

    .line 79
    .end local v10    # "numResultBlocks":I
    .local v8, "numResultBlocks":I
    :cond_3
    aget-object v5, v2, v6

    iget-object v5, v5, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    array-length v5, v5

    .line 80
    .local v5, "shorterBlocksTotalCodewords":I
    array-length v9, v2

    add-int/lit8 v9, v9, -0x1

    .line 81
    .local v3, "numCodewords":I
    .local v9, "longerBlocksStartAt":I
    :goto_3
    if-ltz v9, :cond_4

    .line 82
    aget-object v10, v2, v9

    iget-object v10, v10, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    array-length v10, v10

    .line 83
    if-eq v10, v5, :cond_4

    .line 86
    add-int/lit8 v9, v9, -0x1

    .line 87
    .end local v3    # "numCodewords":I
    goto :goto_3

    .line 88
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 90
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v3

    sub-int v3, v5, v3

    .line 93
    .local v3, "shorterBlocksNumDataCodewords":I
    const/4 v10, 0x0

    .line 94
    .local v10, "rawCodewordsOffset":I
    move v11, v10

    const/4 v10, 0x0

    .line 94
    .local v10, "i":I
    .local v11, "rawCodewordsOffset":I
    :goto_4
    if-ge v10, v3, :cond_6

    .line 95
    move v12, v11

    const/4 v11, 0x0

    .line 95
    .local v11, "j":I
    .local v12, "rawCodewordsOffset":I
    :goto_5
    if-ge v11, v8, :cond_5

    .line 96
    aget-object v13, v2, v11

    iget-object v13, v13, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    add-int/lit8 v14, v12, 0x1

    .line 96
    .local v14, "rawCodewordsOffset":I
    aget-byte v12, v0, v12

    .line 96
    .end local v12    # "rawCodewordsOffset":I
    aput-byte v12, v13, v10

    .line 95
    add-int/lit8 v11, v11, 0x1

    move v12, v14

    goto :goto_5

    .line 94
    .end local v11    # "j":I
    .end local v14    # "rawCodewordsOffset":I
    .restart local v12    # "rawCodewordsOffset":I
    :cond_5
    add-int/lit8 v10, v10, 0x1

    move v11, v12

    goto :goto_4

    .line 100
    .end local v10    # "i":I
    .end local v12    # "rawCodewordsOffset":I
    .local v11, "rawCodewordsOffset":I
    :cond_6
    move v10, v9

    .line 100
    .local v10, "j":I
    :goto_6
    if-ge v10, v8, :cond_7

    .line 101
    aget-object v12, v2, v10

    iget-object v12, v12, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    add-int/lit8 v13, v11, 0x1

    .line 101
    .local v13, "rawCodewordsOffset":I
    aget-byte v11, v0, v11

    .line 101
    .end local v11    # "rawCodewordsOffset":I
    aput-byte v11, v12, v3

    .line 100
    add-int/lit8 v10, v10, 0x1

    move v11, v13

    goto :goto_6

    .line 104
    .end local v10    # "j":I
    .end local v13    # "rawCodewordsOffset":I
    .restart local v11    # "rawCodewordsOffset":I
    :cond_7
    aget-object v10, v2, v6

    iget-object v10, v10, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    array-length v10, v10

    .line 105
    .local v10, "max":I
    move v12, v11

    move v11, v3

    .line 105
    .local v11, "i":I
    .restart local v12    # "rawCodewordsOffset":I
    :goto_7
    if-ge v11, v10, :cond_a

    .line 106
    move v13, v12

    const/4 v12, 0x0

    .line 106
    .local v12, "j":I
    .restart local v13    # "rawCodewordsOffset":I
    :goto_8
    if-ge v12, v8, :cond_9

    .line 107
    if-ge v12, v9, :cond_8

    move v14, v11

    goto :goto_9

    :cond_8
    add-int/lit8 v14, v11, 0x1

    .line 108
    .local v14, "iOffset":I
    :goto_9
    aget-object v15, v2, v12

    iget-object v15, v15, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    add-int/lit8 v16, v13, 0x1

    .line 108
    .local v16, "rawCodewordsOffset":I
    aget-byte v13, v0, v13

    .line 108
    .end local v13    # "rawCodewordsOffset":I
    aput-byte v13, v15, v14

    .line 106
    .end local v14    # "iOffset":I
    add-int/lit8 v12, v12, 0x1

    move/from16 v13, v16

    goto :goto_8

    .line 105
    .end local v12    # "j":I
    .end local v16    # "rawCodewordsOffset":I
    .restart local v13    # "rawCodewordsOffset":I
    :cond_9
    add-int/lit8 v11, v11, 0x1

    move v12, v13

    goto :goto_7

    .line 111
    .end local v11    # "i":I
    .end local v13    # "rawCodewordsOffset":I
    .local v12, "rawCodewordsOffset":I
    :cond_a
    return-object v2
.end method


# virtual methods
.method getCodewords()[B
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
