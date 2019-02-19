.class public final Lcom/google/zxing/oned/EAN8Writer;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "EAN8Writer.java"


# static fields
.field private static final CODE_WIDTH:I = 0x43


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 45
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only encode EAN_8, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/UPCEANWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 7
    .param p1, "contents"    # Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested contents should be 8 digits long, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    const/16 v0, 0x43

    new-array v0, v0, [Z

    .line 63
    .local v0, "result":[Z
    const/4 v1, 0x0

    move v2, v1

    .line 66
    .local v2, "pos":I
    sget-object v3, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    const/4 v4, 0x1

    invoke-static {v0, v1, v3, v4}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v3

    add-int/2addr v3, v1

    .line 68
    .end local v2    # "pos":I
    .local v3, "pos":I
    const/4 v2, 0x0

    .line 68
    .local v2, "i":I
    :goto_0
    const/4 v5, 0x3

    if-gt v2, v5, :cond_1

    .line 69
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 70
    .local v5, "digit":I
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v6, v6, v5

    invoke-static {v0, v3, v6, v1}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v6

    add-int/2addr v3, v6

    .line 68
    .end local v5    # "digit":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v2    # "i":I
    :cond_1
    sget-object v2, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    invoke-static {v0, v3, v2, v1}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v1

    add-int/2addr v3, v1

    .line 75
    const/4 v1, 0x4

    .line 75
    .local v1, "i":I
    :goto_1
    const/4 v2, 0x7

    if-gt v1, v2, :cond_2

    .line 76
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 77
    .local v2, "digit":I
    sget-object v5, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v5, v5, v2

    invoke-static {v0, v3, v5, v4}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v5

    add-int/2addr v3, v5

    .line 75
    .end local v2    # "digit":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 79
    .end local v1    # "i":I
    :cond_2
    sget-object v1, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v0, v3, v1, v4}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    .line 81
    return-object v0
.end method
