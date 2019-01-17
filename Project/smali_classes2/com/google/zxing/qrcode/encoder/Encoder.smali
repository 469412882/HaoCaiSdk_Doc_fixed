.class public final Lcom/google/zxing/qrcode/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final ALPHANUMERIC_TABLE:[I

.field static final DEFAULT_BYTE_MODE_ENCODING:Ljava/lang/String; = "ISO-8859-1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method static append8BitBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V
    .locals 5
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 568
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    .local v0, "bytes":[B
    nop

    .line 570
    nop

    .line 572
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, v0, v2

    .line 573
    .local v3, "b":B
    const/16 v4, 0x8

    invoke-virtual {p1, v3, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 572
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 575
    :cond_0
    return-void

    .line 569
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v0

    .line 570
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/google/zxing/WriterException;

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static appendAlphanumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
    .locals 6
    .param p0, "content"    # Ljava/lang/CharSequence;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 541
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 542
    .local v0, "length":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 543
    .local v1, "i":I
    .local v2, "code1":I
    .local v3, "code2":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 544
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v4

    .line 545
    move v2, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 546
    .end local v3    # "code2":I
    new-instance v3, Lcom/google/zxing/WriterException;

    invoke-direct {v3}, Lcom/google/zxing/WriterException;-><init>()V

    throw v3

    .line 548
    .restart local v3    # "code2":I
    :cond_0
    add-int/lit8 v4, v1, 0x1

    if-ge v4, v0, :cond_2

    .line 549
    add-int/lit8 v4, v1, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v4

    .line 550
    move v3, v4

    if-ne v4, v5, :cond_1

    .line 551
    new-instance v4, Lcom/google/zxing/WriterException;

    invoke-direct {v4}, Lcom/google/zxing/WriterException;-><init>()V

    throw v4

    .line 554
    :cond_1
    mul-int/lit8 v4, v2, 0x2d

    add-int/2addr v4, v3

    const/16 v5, 0xb

    invoke-virtual {p1, v4, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 555
    add-int/lit8 v1, v1, 0x2

    .line 556
    .end local v3    # "code2":I
    goto :goto_0

    .line 558
    .restart local v3    # "code2":I
    :cond_2
    const/4 v4, 0x6

    invoke-virtual {p1, v2, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 559
    add-int/lit8 v1, v1, 0x1

    .line 561
    .end local v2    # "code1":I
    goto :goto_0

    .line 562
    .end local v3    # "code2":I
    :cond_3
    return-void
.end method

.method static appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p2, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 498
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 512
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :pswitch_0
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendKanjiBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V

    .line 510
    return-void

    .line 506
    :pswitch_1
    invoke-static {p0, p2, p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->append8BitBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V

    .line 507
    return-void

    .line 503
    :pswitch_2
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendAlphanumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V

    .line 504
    return-void

    .line 500
    :pswitch_3
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendNumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V

    .line 501
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static appendECI(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/BitArray;)V
    .locals 2
    .param p0, "eci"    # Lcom/google/zxing/common/CharacterSetECI;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;

    .line 604
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 606
    invoke-virtual {p0}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 607
    return-void
.end method

.method static appendKanjiBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V
    .locals 9
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 580
    :try_start_0
    const-string v0, "Shift_JIS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    .local v0, "bytes":[B
    nop

    .line 582
    nop

    .line 584
    array-length v1, v0

    .line 585
    .local v1, "length":I
    const/4 v2, 0x0

    .line 585
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 586
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    .line 587
    .local v3, "byte1":I
    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    .line 588
    .local v4, "byte2":I
    shl-int/lit8 v5, v3, 0x8

    or-int/2addr v5, v4

    .line 589
    .local v5, "code":I
    const/4 v6, -0x1

    .line 590
    .local v6, "subtracted":I
    const v7, 0x8140

    if-lt v5, v7, :cond_0

    const v8, 0x9ffc

    if-gt v5, v8, :cond_0

    .line 591
    sub-int v6, v5, v7

    goto :goto_1

    .line 592
    :cond_0
    const v7, 0xe040

    if-lt v5, v7, :cond_1

    const v7, 0xebbf

    if-gt v5, v7, :cond_1

    .line 593
    const v7, 0xc140

    sub-int v6, v5, v7

    .line 595
    :cond_1
    :goto_1
    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 596
    new-instance v7, Lcom/google/zxing/WriterException;

    const-string v8, "Invalid byte sequence"

    invoke-direct {v7, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 598
    :cond_2
    shr-int/lit8 v7, v6, 0x8

    mul-int/lit16 v7, v7, 0xc0

    and-int/lit16 v8, v6, 0xff

    add-int/2addr v7, v8

    .line 599
    .local v7, "encoded":I
    const/16 v8, 0xd

    invoke-virtual {p1, v7, v8}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 585
    .end local v3    # "byte1":I
    .end local v4    # "byte2":I
    .end local v5    # "code":I
    .end local v6    # "subtracted":I
    .end local v7    # "encoded":I
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 601
    .end local v2    # "i":I
    :cond_3
    return-void

    .line 581
    .end local v0    # "bytes":[B
    .end local v1    # "length":I
    :catch_0
    move-exception v0

    .line 582
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/google/zxing/WriterException;

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static appendLengthInfo(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
    .locals 5
    .param p0, "numLetters"    # I
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p3, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 484
    invoke-virtual {p2, p1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v0

    .line 485
    .local v0, "numBits":I
    const/4 v1, 0x1

    shl-int v2, v1, v0

    if-lt p0, v2, :cond_0

    .line 486
    new-instance v2, Lcom/google/zxing/WriterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is bigger than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shl-int v4, v1, v0

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 488
    :cond_0
    invoke-virtual {p3, p0, v0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 489
    return-void
.end method

.method static appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
    .locals 2
    .param p0, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;

    .line 476
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 477
    return-void
.end method

.method static appendNumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
    .locals 7
    .param p0, "content"    # Ljava/lang/CharSequence;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;

    .line 517
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 518
    .local v0, "length":I
    const/4 v1, 0x0

    .line 519
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 520
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    .line 521
    .local v2, "num1":I
    add-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_0

    .line 523
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 524
    .local v3, "num2":I
    add-int/lit8 v4, v1, 0x2

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    .line 525
    .local v4, "num3":I
    mul-int/lit8 v5, v2, 0x64

    mul-int/lit8 v6, v3, 0xa

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    const/16 v6, 0xa

    invoke-virtual {p1, v5, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 526
    add-int/lit8 v1, v1, 0x3

    .line 527
    .end local v3    # "num2":I
    .end local v4    # "num3":I
    goto :goto_0

    :cond_0
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v0, :cond_1

    .line 529
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 530
    .restart local v3    # "num2":I
    mul-int/lit8 v4, v2, 0xa

    add-int/2addr v4, v3

    const/4 v5, 0x7

    invoke-virtual {p1, v4, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 531
    add-int/lit8 v1, v1, 0x2

    .line 532
    .end local v3    # "num2":I
    goto :goto_0

    .line 534
    :cond_1
    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 535
    add-int/lit8 v1, v1, 0x1

    .line 537
    .end local v2    # "num1":I
    goto :goto_0

    .line 538
    :cond_2
    return-void
.end method

.method private static calculateBitsNeeded(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/Version;)I
    .locals 2
    .param p0, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p1, "headerBits"    # Lcom/google/zxing/common/BitArray;
    .param p2, "dataBits"    # Lcom/google/zxing/common/BitArray;
    .param p3, "version"    # Lcom/google/zxing/qrcode/decoder/Version;

    .line 184
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static calculateMaskPenalty(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 2
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 58
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v0

    .line 59
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule2(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule3(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule4(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    return v0
.end method

.method private static chooseMaskPattern(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 5
    .param p0, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .param p2, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p3, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 257
    const v0, 0x7fffffff

    .line 258
    .local v0, "minPenalty":I
    const/4 v1, -0x1

    .line 260
    .local v1, "bestMaskPattern":I
    const/4 v2, 0x0

    move v3, v1

    move v1, v0

    const/4 v0, 0x0

    .line 260
    .local v0, "penalty":I
    .local v1, "minPenalty":I
    .local v2, "maskPattern":I
    .local v3, "bestMaskPattern":I
    :goto_0
    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    .line 261
    invoke-static {p0, p1, p2, v2, p3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 262
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateMaskPenalty(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v4

    .line 263
    move v0, v4

    if-ge v4, v1, :cond_0

    .line 264
    move v1, v0

    .line 265
    move v3, v2

    .line 260
    .end local v0    # "penalty":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    .end local v2    # "maskPattern":I
    :cond_1
    return v3
.end method

.method public static chooseMode(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .line 199
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v0

    return-object v0
.end method

.method private static chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;

    .line 207
    const-string v0, "Shift_JIS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->isOnlyDoubleByteKanji(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v0

    .line 211
    :cond_0
    const/4 v0, 0x0

    .line 212
    .local v0, "hasNumeric":Z
    const/4 v1, 0x0

    .line 213
    .local v1, "hasAlphanumeric":Z
    const/4 v2, 0x0

    move v3, v0

    const/4 v0, 0x0

    .line 213
    .local v0, "c":C
    .local v2, "i":I
    .local v3, "hasNumeric":Z
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 214
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 215
    move v0, v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_1

    const/16 v4, 0x39

    if-gt v0, v4, :cond_1

    .line 216
    const/4 v3, 0x1

    goto :goto_1

    .line 217
    :cond_1
    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 218
    const/4 v1, 0x1

    .line 213
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    :cond_2
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v4

    .line 223
    .end local v0    # "c":C
    .end local v2    # "i":I
    :cond_3
    if-eqz v1, :cond_4

    .line 224
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v0

    .line 226
    :cond_4
    if-eqz v3, :cond_5

    .line 227
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v0

    .line 229
    :cond_5
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v0
.end method

.method private static chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 3
    .param p0, "numInputBits"    # I
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 272
    const/4 v0, 0x1

    .line 272
    .local v0, "versionNum":I
    :goto_0
    const/16 v1, 0x28

    if-gt v0, v1, :cond_1

    .line 273
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v1

    .line 274
    .local v1, "version":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-static {p0, v1, p1}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    return-object v1

    .line 272
    .end local v1    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "versionNum":I
    :cond_1
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Data too big"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/encoder/QRCode;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;
    .locals 13
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/encoder/QRCode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 80
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    const-string v0, "ISO-8859-1"

    .line 81
    .local v0, "encoding":Ljava/lang/String;
    if-eqz p2, :cond_0

    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_0
    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v1

    .line 91
    .local v1, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 94
    .local v2, "headerBits":Lcom/google/zxing/common/BitArray;
    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    const-string v3, "ISO-8859-1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 95
    invoke-static {v0}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v3

    move-object v5, v4

    .line 96
    .local v5, "eci":Lcom/google/zxing/common/CharacterSetECI;
    move-object v5, v3

    if-eqz v3, :cond_1

    .line 97
    invoke-static {v5, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendECI(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/BitArray;)V

    .line 102
    .end local v5    # "eci":Lcom/google/zxing/common/CharacterSetECI;
    :cond_1
    invoke-static {v1, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    .line 106
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 107
    .local v3, "dataBits":Lcom/google/zxing/common/BitArray;
    invoke-static {p0, v1, v3, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V

    .line 110
    const/4 v5, 0x0

    if-eqz p2, :cond_3

    sget-object v6, Lcom/google/zxing/EncodeHintType;->QR_VERSION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 111
    sget-object v6, Lcom/google/zxing/EncodeHintType;->QR_VERSION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v7, v5

    .line 112
    .local v7, "versionNumber":I
    invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v6

    .line 113
    .local v6, "version":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-static {v1, v2, v3, v6}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateBitsNeeded(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v8

    .line 114
    invoke-static {v8, v6, p1}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 115
    new-instance v4, Lcom/google/zxing/WriterException;

    const-string v5, "Data too big for requested version"

    invoke-direct {v4, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 117
    .end local v7    # "versionNumber":I
    :cond_2
    goto :goto_0

    .line 118
    .end local v6    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    :cond_3
    invoke-static {p1, v1, v2, v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->recommendVersion(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v6

    .line 121
    .restart local v6    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    :goto_0
    new-instance v7, Lcom/google/zxing/common/BitArray;

    invoke-direct {v7}, Lcom/google/zxing/common/BitArray;-><init>()V

    move-object v8, v4

    .line 122
    .local v8, "headerAndDataBits":Lcom/google/zxing/common/BitArray;
    move-object v8, v7

    invoke-virtual {v7, v2}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    .line 124
    sget-object v7, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v1, v7, :cond_4

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v7

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 125
    :goto_1
    invoke-static {v7, v6, v1, v8}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendLengthInfo(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    .line 127
    invoke-virtual {v8, v3}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    .line 129
    invoke-virtual {v6, p1}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v7

    .line 130
    .local v7, "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v9

    invoke-virtual {v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v10

    sub-int/2addr v9, v10

    .line 133
    .local v5, "numDataBytes":I
    move v5, v9

    invoke-static {v9, v8}, Lcom/google/zxing/qrcode/encoder/Encoder;->terminateBits(ILcom/google/zxing/common/BitArray;)V

    .line 136
    nop

    .line 137
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v9

    .line 139
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getNumBlocks()I

    move-result v10

    .line 136
    invoke-static {v8, v9, v5, v10}, Lcom/google/zxing/qrcode/encoder/Encoder;->interleaveWithECBytes(Lcom/google/zxing/common/BitArray;III)Lcom/google/zxing/common/BitArray;

    move-result-object v9

    .line 141
    .local v9, "finalBits":Lcom/google/zxing/common/BitArray;
    new-instance v10, Lcom/google/zxing/qrcode/encoder/QRCode;

    invoke-direct {v10}, Lcom/google/zxing/qrcode/encoder/QRCode;-><init>()V

    .line 143
    .local v4, "qrCode":Lcom/google/zxing/qrcode/encoder/QRCode;
    move-object v4, v10

    invoke-virtual {v10, p1}, Lcom/google/zxing/qrcode/encoder/QRCode;->setECLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    .line 144
    invoke-virtual {v4, v1}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMode(Lcom/google/zxing/qrcode/decoder/Mode;)V

    .line 145
    invoke-virtual {v4, v6}, Lcom/google/zxing/qrcode/encoder/QRCode;->setVersion(Lcom/google/zxing/qrcode/decoder/Version;)V

    .line 148
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v10

    .line 149
    .local v10, "dimension":I
    new-instance v11, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-direct {v11, v10, v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    .line 150
    .local v11, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    invoke-static {v9, p1, v6, v11}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMaskPattern(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v12

    .line 151
    .local v12, "maskPattern":I
    invoke-virtual {v4, v12}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMaskPattern(I)V

    .line 154
    invoke-static {v9, p1, v6, v12, v11}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 155
    invoke-virtual {v4, v11}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 157
    return-object v4
.end method

.method static generateECBytes([BI)[B
    .locals 5
    .param p0, "dataBytes"    # [B
    .param p1, "numEcBytesInBlock"    # I

    const/4 v0, 0x0

    .line 458
    .local v0, "numDataBytes":I
    array-length v1, p0

    .line 459
    move v0, v1

    add-int/2addr v1, p1

    new-array v1, v1, [I

    .line 460
    .local v1, "toEncode":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 460
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 461
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    .line 460
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 463
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    sget-object v4, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v3, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {v3, v1, p1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    .line 465
    new-array v3, p1, [B

    .line 466
    .local v3, "ecBytes":[B
    nop

    .line 466
    .local v2, "i":I
    :goto_1
    if-ge v2, p1, :cond_1

    .line 467
    add-int v4, v0, v2

    aget v4, v1, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 466
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 469
    .end local v2    # "i":I
    :cond_1
    return-object v3
.end method

.method static getAlphanumericCode(I)I
    .locals 1
    .param p0, "code"    # I

    .line 192
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 193
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    aget v0, v0, p0

    return v0

    .line 195
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V
    .locals 14
    .param p0, "numTotalBytes"    # I
    .param p1, "numDataBytes"    # I
    .param p2, "numRSBlocks"    # I
    .param p3, "blockID"    # I
    .param p4, "numDataBytesInBlock"    # [I
    .param p5, "numECBytesInBlock"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    move v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 339
    if-lt v2, v1, :cond_0

    .line 340
    new-instance v3, Lcom/google/zxing/WriterException;

    const-string v4, "Block ID too large"

    invoke-direct {v3, v4}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 343
    :cond_0
    rem-int v3, v0, v1

    .line 345
    .local v3, "numRsBlocksInGroup2":I
    sub-int v4, v1, v3

    .line 347
    .local v4, "numRsBlocksInGroup1":I
    div-int v5, v0, v1

    const/4 v6, 0x0

    move v7, v6

    .line 349
    .local v7, "numTotalBytesInGroup1":I
    move v7, v5

    add-int/lit8 v5, v5, 0x1

    .line 351
    .local v5, "numTotalBytesInGroup2":I
    div-int v8, p1, v1

    move v9, v6

    .line 353
    .local v9, "numDataBytesInGroup1":I
    move v9, v8

    add-int/lit8 v8, v8, 0x1

    .line 355
    .local v8, "numDataBytesInGroup2":I
    sub-int v10, v7, v9

    .line 357
    .local v10, "numEcBytesInGroup1":I
    sub-int v11, v5, v8

    .line 360
    .local v11, "numEcBytesInGroup2":I
    if-eq v10, v11, :cond_1

    .line 361
    new-instance v6, Lcom/google/zxing/WriterException;

    const-string v12, "EC bytes mismatch"

    invoke-direct {v6, v12}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 364
    :cond_1
    add-int v12, v4, v3

    if-eq v1, v12, :cond_2

    .line 365
    new-instance v6, Lcom/google/zxing/WriterException;

    const-string v12, "RS blocks mismatch"

    invoke-direct {v6, v12}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 368
    :cond_2
    add-int v12, v9, v10

    mul-int v12, v12, v4

    add-int v13, v8, v11

    mul-int v13, v13, v3

    add-int/2addr v12, v13

    if-eq v0, v12, :cond_3

    .line 373
    new-instance v6, Lcom/google/zxing/WriterException;

    const-string v12, "Total bytes mismatch"

    invoke-direct {v6, v12}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 376
    :cond_3
    if-ge v2, v4, :cond_4

    .line 377
    aput v9, p4, v6

    .line 378
    aput v10, p5, v6

    return-void

    .line 380
    :cond_4
    aput v8, p4, v6

    .line 381
    aput v11, p5, v6

    .line 383
    return-void
.end method

.method static interleaveWithECBytes(Lcom/google/zxing/common/BitArray;III)Lcom/google/zxing/common/BitArray;
    .locals 18
    .param p0, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "numTotalBytes"    # I
    .param p2, "numDataBytes"    # I
    .param p3, "numRSBlocks"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    move/from16 v6, p1

    move/from16 v7, p2

    .line 395
    move/from16 v8, p3

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v0

    if-eq v0, v7, :cond_0

    .line 396
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_0
    const/4 v0, 0x0

    .line 402
    .local v0, "dataBytesOffset":I
    const/4 v1, 0x0

    .line 403
    .local v1, "maxNumDataBytes":I
    const/4 v2, 0x0

    .line 406
    .local v2, "maxNumEcBytes":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v3

    .line 408
    .local v9, "blocks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/qrcode/encoder/BlockPair;>;"
    const/4 v10, 0x0

    move v12, v0

    move v13, v1

    move v14, v2

    const/4 v0, 0x0

    const/4 v11, 0x0

    .line 408
    .end local v1    # "maxNumDataBytes":I
    .end local v2    # "maxNumEcBytes":I
    .local v0, "i":I
    .local v11, "size":I
    .local v12, "dataBytesOffset":I
    .local v13, "maxNumDataBytes":I
    .local v14, "maxNumEcBytes":I
    :goto_0
    move v15, v0

    .line 408
    .end local v0    # "i":I
    .local v15, "i":I
    if-ge v15, v8, :cond_1

    .line 409
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 410
    .local v5, "numDataBytesInBlock":[I
    new-array v4, v0, [I

    .line 411
    .local v4, "numEcBytesInBlock":[I
    move v0, v6

    move v1, v7

    move v2, v8

    move v3, v15

    move-object/from16 v16, v4

    move-object v4, v5

    .line 411
    .end local v4    # "numEcBytesInBlock":[I
    .local v16, "numEcBytesInBlock":[I
    move-object/from16 v17, v5

    move-object/from16 v5, v16

    .line 411
    .end local v5    # "numDataBytesInBlock":[I
    .local v17, "numDataBytesInBlock":[I
    invoke-static/range {v0 .. v5}, Lcom/google/zxing/qrcode/encoder/Encoder;->getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V

    .line 415
    aget v0, v17, v10

    move v1, v11

    .line 416
    .end local v11    # "size":I
    .local v1, "size":I
    move v11, v0

    .line 416
    .end local v1    # "size":I
    .restart local v11    # "size":I
    new-array v0, v0, [B

    .line 417
    .local v0, "dataBytes":[B
    shl-int/lit8 v1, v12, 0x3

    move-object/from16 v2, p0

    invoke-virtual {v2, v1, v0, v10, v11}, Lcom/google/zxing/common/BitArray;->toBytes(I[BII)V

    .line 418
    aget v1, v16, v10

    invoke-static {v0, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->generateECBytes([BI)[B

    move-result-object v1

    .line 419
    .local v1, "ecBytes":[B
    new-instance v3, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-direct {v3, v0, v1}, Lcom/google/zxing/qrcode/encoder/BlockPair;-><init>([B[B)V

    invoke-interface {v9, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 421
    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 422
    array-length v3, v1

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 423
    aget v3, v17, v10

    add-int/2addr v12, v3

    .line 408
    .end local v0    # "dataBytes":[B
    .end local v1    # "ecBytes":[B
    .end local v11    # "size":I
    .end local v16    # "numEcBytesInBlock":[I
    .end local v17    # "numDataBytesInBlock":[I
    add-int/lit8 v0, v15, 0x1

    .line 408
    .end local v15    # "i":I
    .local v0, "i":I
    goto :goto_0

    .line 425
    .end local v0    # "i":I
    :cond_1
    move-object/from16 v2, p0

    if-eq v7, v12, :cond_2

    .line 426
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_2
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 432
    .local v0, "result":Lcom/google/zxing/common/BitArray;
    const/4 v1, 0x0

    move-object v3, v1

    const/4 v1, 0x0

    .line 432
    .local v1, "i":I
    .local v3, "block":Lcom/google/zxing/qrcode/encoder/BlockPair;
    :goto_1
    const/16 v4, 0x8

    if-ge v1, v13, :cond_5

    .line 433
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 434
    invoke-virtual {v11}, Lcom/google/zxing/qrcode/encoder/BlockPair;->getDataBytes()[B

    move-result-object v11

    .line 435
    .local v11, "dataBytes":[B
    array-length v15, v11

    if-ge v1, v15, :cond_3

    .line 436
    aget-byte v15, v11, v1

    invoke-virtual {v0, v15, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 438
    .end local v3    # "block":Lcom/google/zxing/qrcode/encoder/BlockPair;
    .end local v11    # "dataBytes":[B
    :cond_3
    goto :goto_2

    .line 432
    .restart local v3    # "block":Lcom/google/zxing/qrcode/encoder/BlockPair;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 441
    .end local v1    # "i":I
    :cond_5
    nop

    .line 441
    .local v10, "i":I
    :goto_3
    move v1, v10

    .line 441
    .end local v10    # "i":I
    .restart local v1    # "i":I
    if-ge v1, v14, :cond_8

    .line 442
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 443
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/encoder/BlockPair;->getErrorCorrectionBytes()[B

    move-result-object v10

    .line 444
    .local v10, "ecBytes":[B
    array-length v11, v10

    if-ge v1, v11, :cond_6

    .line 445
    aget-byte v11, v10, v1

    invoke-virtual {v0, v11, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 447
    .end local v3    # "block":Lcom/google/zxing/qrcode/encoder/BlockPair;
    .end local v10    # "ecBytes":[B
    :cond_6
    goto :goto_4

    .line 441
    .restart local v3    # "block":Lcom/google/zxing/qrcode/encoder/BlockPair;
    :cond_7
    add-int/lit8 v10, v1, 0x1

    .line 441
    .end local v1    # "i":I
    .local v10, "i":I
    goto :goto_3

    .line 449
    .end local v3    # "block":Lcom/google/zxing/qrcode/encoder/BlockPair;
    .end local v10    # "i":I
    :cond_8
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v1

    if-eq v6, v1, :cond_9

    .line 450
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Interleaving error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " differ."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 454
    :cond_9
    return-object v0
.end method

.method private static isOnlyDoubleByteKanji(Ljava/lang/String;)Z
    .locals 7
    .param p0, "content"    # Ljava/lang/String;

    .line 235
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "Shift_JIS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .local v1, "bytes":[B
    nop

    .line 237
    nop

    .line 239
    array-length v2, v1

    move v3, v0

    .line 240
    .local v3, "length":I
    move v3, v2

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 241
    return v0

    .line 243
    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 243
    .local v2, "i":I
    .local v4, "byte1":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 244
    aget-byte v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    .line 245
    move v4, v5

    const/16 v6, 0x81

    if-lt v5, v6, :cond_1

    const/16 v5, 0x9f

    if-le v4, v5, :cond_2

    :cond_1
    const/16 v5, 0xe0

    if-lt v4, v5, :cond_3

    const/16 v5, 0xeb

    if-le v4, v5, :cond_2

    goto :goto_1

    .line 243
    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 246
    :cond_3
    :goto_1
    return v0

    .line 249
    .end local v2    # "i":I
    .end local v4    # "byte1":I
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 236
    .end local v1    # "bytes":[B
    .end local v3    # "length":I
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    .line 237
    .local v1, "ignored":Ljava/io/UnsupportedEncodingException;
    return v0
.end method

.method private static recommendVersion(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 2
    .param p0, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .param p1, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p2, "headerBits"    # Lcom/google/zxing/common/BitArray;
    .param p3, "dataBits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 172
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateBitsNeeded(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v0

    .line 173
    invoke-static {v0, p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    .line 176
    .local v0, "provisionalVersion":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-static {p1, p2, p3, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateBitsNeeded(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v1

    .line 177
    invoke-static {v1, p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v1

    return-object v1
.end method

.method static terminateBits(ILcom/google/zxing/common/BitArray;)V
    .locals 6
    .param p0, "numDataBytes"    # I
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 302
    shl-int/lit8 v0, p0, 0x3

    .line 303
    .local v0, "capacity":I
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 304
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data bits cannot fit in the QR Code"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 307
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 307
    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-ge v3, v0, :cond_1

    .line 308
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 307
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    .line 313
    .local v2, "numBitsInLastByte":I
    move v2, v3

    const/16 v4, 0x8

    if-lez v3, :cond_2

    .line 314
    move v3, v2

    .line 314
    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 315
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 314
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 319
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v3

    sub-int v3, p0, v3

    .line 320
    .local v3, "numPaddingBytes":I
    nop

    .line 320
    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_4

    .line 321
    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_3

    const/16 v5, 0xec

    goto :goto_3

    :cond_3
    const/16 v5, 0x11

    :goto_3
    invoke-virtual {p1, v5, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 323
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    if-eq v1, v0, :cond_5

    .line 324
    new-instance v1, Lcom/google/zxing/WriterException;

    const-string v4, "Bits size does not equal capacity"

    invoke-direct {v1, v4}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    :cond_5
    return-void
.end method

.method private static willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z
    .locals 5
    .param p0, "numInputBits"    # I
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 288
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v0

    .line 290
    .local v0, "numBytes":I
    invoke-virtual {p1, p2}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v1

    .line 291
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v1

    .line 293
    .local v1, "numEcBytes":I
    sub-int v2, v0, v1

    .line 294
    .local v2, "numDataBytes":I
    add-int/lit8 v3, p0, 0x7

    div-int/lit8 v3, v3, 0x8

    .line 295
    .local v3, "totalInputBytes":I
    if-lt v2, v3, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    const/4 v4, 0x0

    return v4
.end method
