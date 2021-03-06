.class public final Lcom/google/zxing/common/DefaultGridSampler;
.super Lcom/google/zxing/common/GridSampler;
.source "DefaultGridSampler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/zxing/common/GridSampler;-><init>()V

    return-void
.end method


# virtual methods
.method public sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
    .locals 6
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "dimensionX"    # I
    .param p3, "dimensionY"    # I
    .param p4, "p1ToX"    # F
    .param p5, "p1ToY"    # F
    .param p6, "p2ToX"    # F
    .param p7, "p2ToY"    # F
    .param p8, "p3ToX"    # F
    .param p9, "p3ToY"    # F
    .param p10, "p4ToX"    # F
    .param p11, "p4ToY"    # F
    .param p12, "p1FromX"    # F
    .param p13, "p1FromY"    # F
    .param p14, "p2FromX"    # F
    .param p15, "p2FromY"    # F
    .param p16, "p3FromX"    # F
    .param p17, "p3FromY"    # F
    .param p18, "p4FromX"    # F
    .param p19, "p4FromY"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 39
    invoke-static/range {p4 .. p19}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v0

    .line 43
    .local v0, "transform":Lcom/google/zxing/common/PerspectiveTransform;
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/zxing/common/DefaultGridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v5

    return-object v5
.end method

.method public sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;
    .locals 9
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "dimensionX"    # I
    .param p3, "dimensionY"    # I
    .param p4, "transform"    # Lcom/google/zxing/common/PerspectiveTransform;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 51
    if-lez p2, :cond_5

    if-gtz p3, :cond_0

    goto :goto_3

    .line 54
    :cond_0
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, p2, p3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 55
    .local v0, "bits":Lcom/google/zxing/common/BitMatrix;
    mul-int/lit8 v1, p2, 0x2

    new-array v1, v1, [F

    .line 56
    .local v1, "points":[F
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 56
    .local v3, "y":I
    :goto_0
    if-ge v3, p3, :cond_4

    .line 57
    array-length v4, v1

    .line 58
    .local v4, "max":I
    int-to-float v5, v3

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    .line 59
    .local v5, "iValue":F
    const/4 v7, 0x0

    .line 59
    .local v7, "x":I
    :goto_1
    if-ge v7, v4, :cond_1

    .line 60
    div-int/lit8 v8, v7, 0x2

    int-to-float v8, v8

    add-float/2addr v8, v6

    aput v8, v1, v7

    .line 61
    add-int/lit8 v8, v7, 0x1

    aput v5, v1, v8

    .line 59
    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    .line 63
    .end local v7    # "x":I
    :cond_1
    invoke-virtual {p4, v1}, Lcom/google/zxing/common/PerspectiveTransform;->transformPoints([F)V

    .line 66
    invoke-static {p1, v1}, Lcom/google/zxing/common/DefaultGridSampler;->checkAndNudgePoints(Lcom/google/zxing/common/BitMatrix;[F)V

    .line 68
    const/4 v6, 0x0

    .line 68
    .local v6, "x":I
    :goto_2
    if-ge v6, v4, :cond_3

    .line 69
    :try_start_0
    aget v7, v1, v6

    float-to-int v7, v7

    add-int/lit8 v8, v6, 0x1

    aget v8, v1, v8

    float-to-int v8, v8

    invoke-virtual {p1, v7, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 71
    div-int/lit8 v7, v6, 0x2

    invoke-virtual {v0, v7, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_2
    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    .line 74
    .end local v6    # "x":I
    :catch_0
    move-exception v2

    const/4 v2, 0x0

    .line 82
    .local v2, "aioobe":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    .line 83
    .end local v2    # "aioobe":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    nop

    .line 56
    .end local v4    # "max":I
    .end local v5    # "iValue":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    .end local v3    # "y":I
    :cond_4
    return-object v0

    .line 52
    .end local v0    # "bits":Lcom/google/zxing/common/BitMatrix;
    .end local v1    # "points":[F
    :cond_5
    :goto_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method
