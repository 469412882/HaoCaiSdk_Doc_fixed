.class public interface abstract Lkotlinx/coroutines/experimental/channels/ProducerScope;
.super Ljava/lang/Object;
.source "Produce.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/CoroutineScope;
.implements Lkotlinx/coroutines/experimental/channels/SendChannel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/experimental/CoroutineScope;",
        "Lkotlinx/coroutines/experimental/channels/SendChannel<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003R\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlinx/coroutines/experimental/channels/ProducerScope;",
        "E",
        "Lkotlinx/coroutines/experimental/CoroutineScope;",
        "Lkotlinx/coroutines/experimental/channels/SendChannel;",
        "channel",
        "getChannel",
        "()Lkotlinx/coroutines/experimental/channels/SendChannel;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# virtual methods
.method public abstract getChannel()Lkotlinx/coroutines/experimental/channels/SendChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/experimental/channels/SendChannel<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
