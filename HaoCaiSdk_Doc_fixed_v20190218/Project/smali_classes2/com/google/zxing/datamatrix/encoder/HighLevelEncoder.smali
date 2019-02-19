.class public final Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# static fields
.field static final ASCII_ENCODATION:I = 0x0

.field static final BASE256_ENCODATION:I = 0x5

.field static final C40_ENCODATION:I = 0x1

.field static final C40_UNLATCH:C = '\u00fe'

.field static final EDIFACT_ENCODATION:I = 0x4

.field static final LATCH_TO_ANSIX12:C = '\u00ee'

.field static final LATCH_TO_BASE256:C = '\u00e7'

.field static final LATCH_TO_C40:C = '\u00e6'

.field static final LATCH_TO_EDIFACT:C = '\u00f0'

.field static final LATCH_TO_TEXT:C = '\u00ef'

.field private static final MACRO_05:C = '\u00ec'

.field private static final MACRO_05_HEADER:Ljava/lang/String; = "[)>\u001e05\u001d"

.field private static final MACRO_06:C = '\u00ed'

.field private static final MACRO_06_HEADER:Ljava/lang/String; = "[)>\u001e06\u001d"

.field private static final MACRO_TRAILER:Ljava/lang/String; = "\u001e\u0004"

.field private static final PAD:C = '\u0081'

.field static final TEXT_ENCODATION:I = 0x2

.field static final UPPER_SHIFT:C = '\u00eb'

.field static final X12_ENCODATION:I = 0x3

.field static final X12_UNLATCH:C = '\u00fe'


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method public static determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I
    .locals 5
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, "count":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 428
    .local v1, "len":I
    move v2, p1

    .line 429
    .local v2, "idx":I
    if-ge p1, v1, :cond_1

    .line 430
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 431
    .local v3, "ch":C
    :cond_0
    :goto_0
    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ge v2, v1, :cond_1

    .line 432
    add-int/lit8 v0, v0, 0x1

    .line 433
    add-int/lit8 v2, v2, 0x1

    .line 434
    if-ge v2, v1, :cond_0

    .line 435
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    goto :goto_0

    .line 439
    .end local v3    # "ch":C
    :cond_1
    return v0
.end method

.method public static encodeHighLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 142
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;
    .locals 9
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "shape"    # Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    .param p2, "minSize"    # Lcom/google/zxing/Dimension;
    .param p3, "maxSize"    # Lcom/google/zxing/Dimension;

    .line 161
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/zxing/datamatrix/encoder/Encoder;

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/C40Encoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/TextEncoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/TextEncoder;-><init>()V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/X12Encoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;-><init>()V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;-><init>()V

    const/4 v5, 0x4

    aput-object v1, v0, v5

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;-><init>()V

    const/4 v5, 0x5

    aput-object v1, v0, v5

    .line 166
    .local v0, "encoders":[Lcom/google/zxing/datamatrix/encoder/Encoder;
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    invoke-direct {v1, p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v7, v6

    .line 167
    .local v7, "context":Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    move-object v7, v1

    invoke-virtual {v1, p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSymbolShape(Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)V

    .line 168
    invoke-virtual {v7, p2, p3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSizeConstraints(Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)V

    .line 170
    const-string v1, "[)>\u001e05\u001d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u001e\u0004"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const/16 v1, 0xec

    invoke-virtual {v7, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 172
    invoke-virtual {v7, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    .line 173
    iget v1, v7, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v1, v1, 0x7

    iput v1, v7, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_0

    .line 174
    :cond_0
    const-string v1, "[)>\u001e06\u001d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u001e\u0004"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    const/16 v1, 0xed

    invoke-virtual {v7, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 176
    invoke-virtual {v7, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    .line 177
    iget v1, v7, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v1, v1, 0x7

    iput v1, v7, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 180
    :cond_1
    :goto_0
    nop

    .line 181
    .local v2, "encodingMode":I
    :cond_2
    :goto_1
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 182
    aget-object v1, v0, v2

    invoke-interface {v1, v7}, Lcom/google/zxing/datamatrix/encoder/Encoder;->encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V

    .line 183
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v1

    if-ltz v1, :cond_2

    .line 184
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v2

    .line 185
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->resetEncoderSignal()V

    goto :goto_1

    .line 188
    :cond_3
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v1

    .line 189
    .local v1, "len":I
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo()V

    .line 190
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v4

    .line 191
    .local v4, "capacity":I
    if-ge v1, v4, :cond_4

    .line 192
    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_4

    .line 193
    const/16 v5, 0xfe

    invoke-virtual {v7, v5}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 197
    :cond_4
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 198
    .local v6, "codewords":Ljava/lang/StringBuilder;
    move-object v6, v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/16 v8, 0x81

    if-ge v5, v4, :cond_5

    .line 199
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    :cond_5
    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v5, v4, :cond_6

    .line 202
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v8, v5}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->randomize253State(CI)C

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 205
    :cond_6
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static findMinimums([F[II[B)I
    .locals 4
    .param p0, "charCounts"    # [F
    .param p1, "intCharCounts"    # [I
    .param p2, "min"    # I
    .param p3, "mins"    # [B

    .line 360
    const/4 v0, 0x0

    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 361
    move v1, p2

    const/4 p2, 0x0

    .line 361
    .local v1, "min":I
    .local p2, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge p2, v2, :cond_2

    .line 362
    aget v2, p0, p2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, p1, p2

    .line 363
    aget v2, p1, p2

    .line 364
    .local v2, "current":I
    if-le v1, v2, :cond_0

    .line 365
    move v1, v2

    .line 366
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 368
    :cond_0
    if-ne v1, v2, :cond_1

    .line 369
    aget-byte v3, p3, p2

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, p3, p2

    .line 361
    .end local v2    # "current":I
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 373
    .end local p2    # "i":I
    :cond_2
    return v1
.end method

.method private static getMinimumCount([B)I
    .locals 3
    .param p0, "mins"    # [B

    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, "minCount":I
    const/4 v1, 0x0

    .line 378
    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 379
    aget-byte v2, p0, v1

    add-int/2addr v0, v2

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method static illegalCharacter(C)V
    .locals 5
    .param p0, "c"    # C

    .line 443
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "hex":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0000"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal character: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static isDigit(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 385
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static isExtendedASCII(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 389
    const/16 v0, 0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isNativeC40(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 393
    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isNativeEDIFACT(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 411
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5e

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isNativeText(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 397
    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isNativeX12(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 401
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isSpecialB256(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method private static isX12TermSep(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 405
    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static lookAheadTest(Ljava/lang/CharSequence;II)I
    .locals 17
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I
    .param p2, "currentMode"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 209
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 210
    return p2

    .line 214
    :cond_0
    const/4 v2, 0x6

    if-nez p2, :cond_1

    .line 215
    new-array v3, v2, [F

    fill-array-data v3, :array_0

    .line 215
    .local v3, "charCounts":[F
    goto :goto_0

    .line 217
    .end local v3    # "charCounts":[F
    :cond_1
    new-array v3, v2, [F

    fill-array-data v3, :array_1

    const/4 v4, 0x0

    .line 218
    .local v4, "charCounts":[F
    move-object v4, v3

    const/4 v5, 0x0

    aput v5, v3, p2

    .line 221
    .end local v4    # "charCounts":[F
    .restart local v3    # "charCounts":[F
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 224
    .local v5, "charsProcessed":I
    .local v6, "min":I
    :goto_1
    add-int v7, v1, v5

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const v9, 0x7fffffff

    const/4 v10, 0x5

    const/4 v11, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x1

    if-ne v7, v8, :cond_7

    .line 226
    new-array v7, v2, [B

    .line 227
    .local v7, "mins":[B
    new-array v2, v2, [I

    .line 228
    .local v2, "intCharCounts":[I
    invoke-static {v3, v2, v9, v7}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    move-result v6

    .line 229
    invoke-static {v7}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->getMinimumCount([B)I

    move-result v8

    .line 231
    .local v8, "minCount":I
    aget v9, v2, v4

    if-ne v9, v6, :cond_2

    .line 232
    return v4

    .line 234
    :cond_2
    if-ne v8, v14, :cond_3

    aget-byte v4, v7, v10

    if-lez v4, :cond_3

    .line 235
    return v10

    .line 237
    :cond_3
    if-ne v8, v14, :cond_4

    aget-byte v4, v7, v12

    if-lez v4, :cond_4

    .line 238
    return v12

    .line 240
    :cond_4
    if-ne v8, v14, :cond_5

    aget-byte v4, v7, v11

    if-lez v4, :cond_5

    .line 241
    return v11

    .line 243
    :cond_5
    if-ne v8, v14, :cond_6

    aget-byte v4, v7, v13

    if-lez v4, :cond_6

    .line 244
    return v13

    .line 246
    :cond_6
    return v14

    .line 249
    .end local v2    # "intCharCounts":[I
    .end local v6    # "min":I
    .end local v7    # "mins":[B
    .end local v8    # "minCount":I
    :cond_7
    add-int v6, v1, v5

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 250
    .local v6, "c":C
    add-int/lit8 v5, v5, 0x1

    .line 253
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v7, :cond_8

    .line 254
    aget v7, v3, v4

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v7, v15

    aput v7, v3, v4

    goto :goto_2

    .line 255
    :cond_8
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 256
    aget v7, v3, v4

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-float v7, v9

    aput v7, v3, v4

    .line 257
    aget v7, v3, v4

    const/high16 v9, 0x40000000    # 2.0f

    add-float/2addr v7, v9

    aput v7, v3, v4

    goto :goto_2

    .line 259
    :cond_9
    aget v7, v3, v4

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-float v7, v9

    aput v7, v3, v4

    .line 260
    aget v7, v3, v4

    add-float/2addr v7, v8

    aput v7, v3, v4

    .line 264
    :goto_2
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v7

    const v9, 0x3faaaaab

    const v10, 0x402aaaab

    const v15, 0x3f2aaaab

    if-eqz v7, :cond_a

    .line 265
    aget v7, v3, v14

    add-float/2addr v7, v15

    aput v7, v3, v14

    goto :goto_3

    .line 266
    :cond_a
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 267
    aget v7, v3, v14

    add-float/2addr v7, v10

    aput v7, v3, v14

    goto :goto_3

    .line 269
    :cond_b
    aget v7, v3, v14

    add-float/2addr v7, v9

    aput v7, v3, v14

    .line 273
    :goto_3
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 274
    aget v7, v3, v11

    add-float/2addr v7, v15

    aput v7, v3, v11

    goto :goto_4

    .line 275
    :cond_c
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 276
    aget v7, v3, v11

    add-float/2addr v7, v10

    aput v7, v3, v11

    goto :goto_4

    .line 278
    :cond_d
    aget v7, v3, v11

    add-float/2addr v7, v9

    aput v7, v3, v11

    .line 282
    :goto_4
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 283
    aget v7, v3, v13

    add-float/2addr v7, v15

    aput v7, v3, v13

    goto :goto_5

    .line 284
    :cond_e
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 285
    aget v7, v3, v13

    const v9, 0x408aaaab

    add-float/2addr v7, v9

    aput v7, v3, v13

    goto :goto_5

    .line 287
    :cond_f
    aget v7, v3, v13

    const v9, 0x40555555

    add-float/2addr v7, v9

    aput v7, v3, v13

    .line 291
    :goto_5
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeEDIFACT(C)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 292
    aget v7, v3, v12

    const/high16 v9, 0x3f400000    # 0.75f

    add-float/2addr v7, v9

    aput v7, v3, v12

    goto :goto_6

    .line 293
    :cond_10
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 294
    aget v7, v3, v12

    const/high16 v9, 0x40880000    # 4.25f

    add-float/2addr v7, v9

    aput v7, v3, v12

    goto :goto_6

    .line 296
    :cond_11
    aget v7, v3, v12

    const/high16 v9, 0x40500000    # 3.25f

    add-float/2addr v7, v9

    aput v7, v3, v12

    .line 300
    :goto_6
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isSpecialB256(C)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 301
    const/4 v7, 0x5

    aget v8, v3, v7

    const/high16 v9, 0x40800000    # 4.0f

    add-float/2addr v8, v9

    aput v8, v3, v7

    goto :goto_7

    .line 303
    :cond_12
    const/4 v7, 0x5

    aget v9, v3, v7

    add-float/2addr v9, v8

    aput v9, v3, v7

    .line 307
    :goto_7
    if-lt v5, v12, :cond_1c

    .line 308
    new-array v7, v2, [I

    .line 309
    .local v7, "intCharCounts":[I
    new-array v8, v2, [B

    .line 310
    .local v8, "mins":[B
    const v9, 0x7fffffff

    invoke-static {v3, v7, v9, v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    .line 311
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->getMinimumCount([B)I

    move-result v9

    .line 313
    .local v9, "minCount":I
    aget v10, v7, v4

    const/4 v15, 0x5

    aget v2, v7, v15

    if-ge v10, v2, :cond_13

    aget v2, v7, v4

    aget v10, v7, v14

    if-ge v2, v10, :cond_13

    aget v2, v7, v4

    aget v10, v7, v11

    if-ge v2, v10, :cond_13

    aget v2, v7, v4

    aget v10, v7, v13

    if-ge v2, v10, :cond_13

    aget v2, v7, v4

    aget v10, v7, v12

    if-ge v2, v10, :cond_13

    .line 318
    return v4

    .line 320
    :cond_13
    const/4 v2, 0x5

    aget v10, v7, v2

    aget v2, v7, v4

    if-lt v10, v2, :cond_1b

    aget-byte v2, v8, v14

    aget-byte v10, v8, v11

    add-int/2addr v2, v10

    aget-byte v10, v8, v13

    add-int/2addr v2, v10

    aget-byte v10, v8, v12

    add-int/2addr v2, v10

    if-nez v2, :cond_14

    goto :goto_9

    .line 324
    :cond_14
    if-ne v9, v14, :cond_15

    aget-byte v2, v8, v12

    if-lez v2, :cond_15

    .line 325
    return v12

    .line 327
    :cond_15
    if-ne v9, v14, :cond_16

    aget-byte v2, v8, v11

    if-lez v2, :cond_16

    .line 328
    return v11

    .line 330
    :cond_16
    if-ne v9, v14, :cond_17

    aget-byte v2, v8, v13

    if-lez v2, :cond_17

    .line 331
    return v13

    .line 333
    :cond_17
    aget v2, v7, v14

    add-int/2addr v2, v14

    aget v10, v7, v4

    if-ge v2, v10, :cond_1c

    aget v2, v7, v14

    add-int/2addr v2, v14

    const/4 v10, 0x5

    aget v10, v7, v10

    if-ge v2, v10, :cond_1c

    aget v2, v7, v14

    add-int/2addr v2, v14

    aget v10, v7, v12

    if-ge v2, v10, :cond_1c

    aget v2, v7, v14

    add-int/2addr v2, v14

    aget v10, v7, v11

    if-ge v2, v10, :cond_1c

    .line 337
    aget v2, v7, v14

    aget v10, v7, v13

    if-ge v2, v10, :cond_18

    .line 338
    return v14

    .line 340
    :cond_18
    aget v2, v7, v14

    aget v10, v7, v13

    if-ne v2, v10, :cond_1c

    .line 341
    add-int v2, v1, v5

    add-int/2addr v2, v14

    .line 342
    .local v2, "p":I
    .local v4, "tc":C
    :goto_8
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v2, v10, :cond_1a

    .line 343
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 344
    move v4, v10

    invoke-static {v10}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 345
    return v13

    .line 347
    :cond_19
    invoke-static {v4}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 350
    add-int/lit8 v2, v2, 0x1

    .line 351
    .end local v4    # "tc":C
    goto :goto_8

    .line 352
    :cond_1a
    return v14

    .line 322
    .end local v2    # "p":I
    :cond_1b
    :goto_9
    const/4 v2, 0x5

    return v2

    .line 356
    .end local v7    # "intCharCounts":[I
    .end local v8    # "mins":[B
    .end local v9    # "minCount":I
    :cond_1c
    nop

    .line 221
    const/4 v2, 0x6

    goto/16 :goto_1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40100000    # 2.25f
    .end array-data
.end method

.method private static randomize253State(CI)C
    .locals 4
    .param p0, "ch"    # C
    .param p1, "codewordPosition"    # I

    .line 129
    mul-int/lit16 v0, p1, 0x95

    rem-int/lit16 v0, v0, 0xfd

    add-int/lit8 v0, v0, 0x1

    .line 130
    .local v0, "pseudoRandom":I
    add-int v1, p0, v0

    const/4 v2, 0x0

    .line 131
    .local v2, "tempVariable":I
    move v2, v1

    const/16 v3, 0xfe

    if-gt v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    add-int/lit16 v1, v2, -0xfe

    :goto_0
    int-to-char v1, v1

    return v1
.end method
