.class public final Lcom/google/zxing/client/result/ISBNResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "ISBNResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ISBNParsedResult;
    .locals 4
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 34
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    .line 35
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 36
    return-object v2

    .line 38
    :cond_0
    invoke-static {p1}, Lcom/google/zxing/client/result/ISBNResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    .line 39
    .local v1, "rawText":Ljava/lang/String;
    move-object v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 40
    const/16 v3, 0xd

    if-eq v0, v3, :cond_1

    .line 41
    return-object v2

    .line 43
    :cond_1
    const-string v0, "978"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "979"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 44
    return-object v2

    .line 47
    :cond_2
    new-instance v0, Lcom/google/zxing/client/result/ISBNParsedResult;

    invoke-direct {v0, v1}, Lcom/google/zxing/client/result/ISBNParsedResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/ISBNResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ISBNParsedResult;

    move-result-object p1

    return-object p1
.end method
