.class public final Lcom/google/zxing/qrcode/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 42
    return-void
.end method

.method private correctErrors([BI)V
    .locals 5
    .param p1, "codewordBytes"    # [B
    .param p2, "numDataCodewords"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 184
    .local v0, "numCodewords":I
    array-length v1, p1

    .line 186
    move v0, v1

    new-array v1, v1, [I

    .line 187
    .local v1, "codewordsInts":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 187
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 188
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    .line 187
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    .end local v3    # "i":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    array-length v4, p1

    sub-int/2addr v4, p2

    invoke-virtual {v3, v1, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    nop

    .line 197
    nop

    .line 197
    .local v2, "i":I
    :goto_1
    if-ge v2, p2, :cond_1

    .line 198
    aget v3, v1, v2

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 200
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 192
    :catch_0
    move-exception v2

    const/4 v2, 0x0

    .line 193
    .local v2, "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v3

    throw v3
.end method

.method private decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 16
    .param p1, "parser"    # Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/qrcode/decoder/BitMatrixParser;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 145
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    .line 146
    .local v0, "version":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getErrorCorrectionLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v1

    .line 149
    .local v1, "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v2

    .line 151
    invoke-static {v2, v0, v1}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;

    move-result-object v2

    .line 154
    .local v2, "dataBlocks":[Lcom/google/zxing/qrcode/decoder/DataBlock;
    const/4 v3, 0x0

    .line 155
    .local v3, "totalBytes":I
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v3

    const/4 v3, 0x0

    .line 155
    .end local v3    # "totalBytes":I
    .local v6, "totalBytes":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v7, v2, v3

    .line 156
    .local v7, "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getNumDataCodewords()I

    move-result v8

    add-int/2addr v6, v8

    .line 155
    .end local v7    # "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 158
    :cond_0
    new-array v3, v6, [B

    .line 159
    .local v3, "resultBytes":[B
    const/4 v4, 0x0

    .line 162
    .local v4, "resultOffset":I
    array-length v7, v2

    const/4 v8, 0x0

    move v9, v4

    const/4 v4, 0x0

    .line 162
    .end local v4    # "resultOffset":I
    .local v8, "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    .local v9, "resultOffset":I
    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v10, v2, v4

    .line 163
    move-object v8, v10

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getCodewords()[B

    move-result-object v10

    .line 164
    .local v10, "codewordBytes":[B
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getNumDataCodewords()I

    move-result v11

    .line 165
    .local v11, "numDataCodewords":I
    move-object/from16 v12, p0

    invoke-direct {v12, v10, v11}, Lcom/google/zxing/qrcode/decoder/Decoder;->correctErrors([BI)V

    .line 166
    move v13, v9

    const/4 v9, 0x0

    .line 166
    .local v9, "i":I
    .local v13, "resultOffset":I
    :goto_2
    if-ge v9, v11, :cond_1

    .line 167
    add-int/lit8 v14, v13, 0x1

    .line 167
    .local v14, "resultOffset":I
    aget-byte v15, v10, v9

    aput-byte v15, v3, v13

    .line 166
    .end local v13    # "resultOffset":I
    add-int/lit8 v9, v9, 0x1

    move v13, v14

    goto :goto_2

    .line 162
    .end local v9    # "i":I
    .end local v10    # "codewordBytes":[B
    .end local v11    # "numDataCodewords":I
    .end local v14    # "resultOffset":I
    .restart local v13    # "resultOffset":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v9, v13

    goto :goto_1

    .line 172
    .end local v8    # "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    .end local v13    # "resultOffset":I
    .local v9, "resultOffset":I
    :cond_2
    move-object/from16 v12, p0

    move-object/from16 v4, p2

    invoke-static {v3, v0, v1, v4}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 1
    .param p1, "bits"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 7
    .param p1, "bits"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitMatrix;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 89
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;

    invoke-direct {v0, p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 90
    .local v0, "parser":Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    const/4 v1, 0x0

    .line 91
    .local v1, "fe":Lcom/google/zxing/FormatException;
    const/4 v2, 0x0

    move-object v3, v2

    .line 93
    .local v3, "ce":Lcom/google/zxing/ChecksumException;
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v4
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 97
    :catch_0
    move-exception v4

    .line 98
    nop

    .line 97
    .local v2, "e":Lcom/google/zxing/ChecksumException;
    move-object v3, v4

    .line 97
    .end local v2    # "e":Lcom/google/zxing/ChecksumException;
    goto :goto_0

    .line 95
    :catch_1
    move-exception v4

    .line 93
    nop

    .line 95
    .local v2, "e":Lcom/google/zxing/FormatException;
    move-object v1, v4

    .line 98
    .end local v2    # "e":Lcom/google/zxing/FormatException;
    nop

    .line 103
    .local v2, "result":Lcom/google/zxing/common/DecoderResult;
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->remask()V

    .line 106
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->setMirror(Z)V

    .line 109
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    .line 112
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 121
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->mirror()V

    .line 123
    invoke-direct {p0, v0, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v5

    .line 126
    move-object v2, v5

    new-instance v6, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    invoke-direct {v6, v4}, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;-><init>(Z)V

    invoke-virtual {v5, v6}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/zxing/ChecksumException; {:try_start_1 .. :try_end_1} :catch_2

    .line 128
    return-object v2

    .line 130
    .end local v2    # "result":Lcom/google/zxing/common/DecoderResult;
    :catch_2
    move-exception v2

    .line 132
    .local v2, "e":Lcom/google/zxing/ReaderException;
    if-eqz v1, :cond_0

    .line 133
    throw v1

    .line 135
    :cond_0
    if-eqz v3, :cond_1

    .line 136
    throw v3

    .line 138
    :cond_1
    throw v2
.end method

.method public decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .locals 1
    .param p1, "image"    # [[Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode([[ZLjava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decode([[ZLjava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 6
    .param p1, "image"    # [[Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[Z",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 60
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    array-length v0, p1

    .line 61
    .local v0, "dimension":I
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v1, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    .line 62
    .local v1, "bits":Lcom/google/zxing/common/BitMatrix;
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 62
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 63
    const/4 v4, 0x0

    .line 63
    .local v4, "j":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 64
    aget-object v5, p1, v3

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_0

    .line 65
    invoke-virtual {v1, v4, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 63
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 62
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v2

    return-object v2
.end method
