.class public final Lkotlinx/coroutines/experimental/channels/SendChannel$DefaultImpls;
.super Ljava/lang/Object;
.source "Channel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/channels/SendChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# direct methods
.method public static bridge synthetic close$default(Lkotlinx/coroutines/experimental/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z
    .locals 0

    if-eqz p3, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: close"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 94
    const/4 p1, 0x0

    check-cast p1, Ljava/lang/Throwable;

    :cond_1
    invoke-interface {p0, p1}, Lkotlinx/coroutines/experimental/channels/SendChannel;->close(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method