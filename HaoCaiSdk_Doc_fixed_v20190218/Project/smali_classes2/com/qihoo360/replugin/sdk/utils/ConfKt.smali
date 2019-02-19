.class public final Lcom/qihoo360/replugin/sdk/utils/ConfKt;
.super Ljava/lang/Object;
.source "Conf.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Conf.kt\ncom/qihoo360/replugin/sdk/utils/ConfKt\n*L\n1#1,125:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u001a\u001a\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u001a\u0010\u0010\t\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004\u001a\u0010\u0010\u000b\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004\u001a\u0010\u0010\u000c\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004\u001a\u0010\u0010\r\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004\u001a\u0016\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004\u001a\u0014\u0010\u000f\u001a\u00020\u0004*\u00020\u00042\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0004\u001a\u001a\u0010\u0011\u001a\u00020\u0012*\u00020\u00042\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0014H\u0002\u00a8\u0006\u0015"
    }
    d2 = {
        "Pu_isDev",
        "",
        "Var1List",
        "",
        "",
        "VarRandom",
        "",
        "startIndex",
        "count",
        "getAppKey",
        "key",
        "getVal2",
        "getVal3",
        "getVal4",
        "getVar1",
        "dC",
        "pass",
        "w2",
        "",
        "urls",
        "Ljava/util/ArrayList;",
        "host-sdk_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method public static final Pu_isDev()Z
    .locals 9

    .line 84
    const/4 v0, 0x0

    move v1, v0

    .line 85
    .local v1, "flag":Z
    nop

    .line 86
    :try_start_0
    const-string v2, "content://a.b.c.d.e.dev.tool/config"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 87
    .local v4, "var0":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const-string v3, "code"

    aput-object v3, v5, v0

    .line 88
    .local v5, "var1":[Ljava/lang/String;
    const-string v6, "name=?"

    .line 89
    .local v6, "var2":Ljava/lang/String;
    new-array v7, v2, [Ljava/lang/String;

    const-string v2, "plugin_update_dev"

    aput-object v2, v7, v0

    .line 90
    .local v7, "var3":[Ljava/lang/String;
    sget-object v2, Lco/bxvip/android/commonlib/utils/CommonInit;->INSTANCE:Lco/bxvip/android/commonlib/utils/CommonInit;

    invoke-virtual {v2}, Lco/bxvip/android/commonlib/utils/CommonInit;->getCtx()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v2, 0x0

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 91
    .local v2, "var5":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 92
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v8, "true"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 94
    const/4 v1, 0x1

    .line 92
    :cond_0
    goto :goto_0

    .line 98
    .end local v2    # "var5":Landroid/database/Cursor;
    .end local v4    # "var0":Landroid/net/Uri;
    .end local v5    # "var1":[Ljava/lang/String;
    .end local v6    # "var2":Ljava/lang/String;
    .end local v7    # "var3":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 99
    :cond_1
    nop

    .line 100
    return v1
.end method

.method public static final Var1List()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 17
    .local v0, "$i$a$1$apply":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    .line 18
    .local v2, "$receiver":Ljava/util/ArrayList;
    const-string v3, "http://plist.gotoguxiang.com"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    const-string v3, "http://plist.aotubangfen.com"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    const-string v3, "http://plist.xmfn14.com"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    const-string v3, "http://plist.qjhuanggong.com"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    const-string v3, "http://plist.mowanshidai.com"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .end local v0    # "$i$a$1$apply":I
    .end local v2    # "$receiver":Ljava/util/ArrayList;
    nop

    .line 17
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public static final VarRandom(II)I
    .locals 1
    .param p0, "startIndex"    # I
    .param p1, "count"    # I

    .line 67
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static bridge synthetic VarRandom$default(IIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_0

    .line 66
    const/4 p0, 0x0

    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/qihoo360/replugin/sdk/utils/ConfKt;->Var1List()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :cond_1
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/sdk/utils/ConfKt;->VarRandom(II)I

    move-result p0

    return p0
.end method

.method public static final dC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "pass"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [I

    .line 106
    .local v1, "asciiCode":[I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_0

    .line 107
    .local v4, "i":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput v6, v1, v4

    .line 106
    add-int/2addr v4, v5

    .line 106
    .end local v4    # "i":I
    goto :goto_0

    .line 109
    :cond_0
    nop

    .line 109
    .local v3, "i":I
    :goto_1
    move v2, v3

    .line 110
    .end local v3    # "i":I
    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 111
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 112
    .local v3, "hex":I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xa

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 113
    .local v4, "inte":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    :goto_2
    if-lt v6, v5, :cond_2

    .line 114
    .local v6, "j":I
    add-int/lit8 v7, v6, -0x1

    aget v7, v1, v7

    mul-int v7, v7, v6

    sub-int v7, v4, v7

    .line 115
    .local v7, "val":I
    if-gez v7, :cond_1

    .line 116
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    rem-int/lit16 v8, v8, 0x100

    rsub-int v8, v8, 0x100

    goto :goto_3

    .line 118
    :cond_1
    rem-int/lit16 v8, v7, 0x100

    .line 115
    :goto_3
    move v4, v8

    .line 113
    .end local v7    # "val":I
    add-int/lit8 v6, v6, -0x1

    .line 113
    .end local v6    # "j":I
    goto :goto_2

    .line 121
    :cond_2
    int-to-char v6, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    add-int/lit8 v3, v2, 0x2

    .line 110
    .end local v2    # "i":I
    .end local v4    # "inte":I
    .local v3, "i":I
    goto :goto_1

    .line 124
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "result.toString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3
.end method

.method public static bridge synthetic dC$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 103
    const-string p1, "bxyl"

    :cond_0
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/sdk/utils/ConfKt;->dC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getAppKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 61
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "androidAppOne"

    goto :goto_0

    .line 63
    :cond_0
    if-nez p0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 61
    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static final getVal2(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 40
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "/index.php/appApi/request"

    goto :goto_0

    .line 42
    :cond_0
    if-nez p0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 40
    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static final getVal3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 46
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "d20a1bf73c288b4ad4ddc8eb3fc59274704a0495"

    goto :goto_0

    .line 48
    :cond_0
    if-nez p0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 46
    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static final getVal4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 55
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "developer-default"

    goto :goto_0

    .line 57
    :cond_0
    if-nez p0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 55
    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static final getVar1(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v0, "val1":Ljava/util/ArrayList;
    if-eqz p0, :cond_0

    invoke-static {p0, v0}, Lcom/qihoo360/replugin/sdk/utils/ConfKt;->w2(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 30
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    invoke-static {}, Lcom/qihoo360/replugin/sdk/utils/ConfKt;->Var1List()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 33
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 30
    .end local v0    # "val1":Ljava/util/ArrayList;
    :goto_0
    goto :goto_1

    .line 35
    :cond_2
    invoke-static {}, Lcom/qihoo360/replugin/sdk/utils/ConfKt;->Var1List()Ljava/util/List;

    move-result-object v1

    .line 27
    :goto_1
    return-object v1
.end method

.method private static final w2(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 9
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "urls"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71
    nop

    .line 72
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 73
    move-object v3, p0

    check-cast v3, Ljava/lang/CharSequence;

    new-array v4, v2, [Ljava/lang/String;

    const-string v0, ";"

    aput-object v0, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 74
    .local v0, "urlList":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_1

    .line 75
    .local v1, "index":I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 74
    .end local v1    # "index":I
    goto :goto_1

    .line 78
    .end local v0    # "urlList":Ljava/util/List;
    :catch_0
    move-exception v0

    .line 80
    :cond_1
    nop

    .line 81
    return-void
.end method
