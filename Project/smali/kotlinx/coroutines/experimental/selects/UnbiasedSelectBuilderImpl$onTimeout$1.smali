.class final Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onTimeout$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SelectUnbiased.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;->onTimeout(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002 \u0000H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function1;

.field final synthetic $time:J

.field final synthetic $unit:Ljava/util/concurrent/TimeUnit;

.field final synthetic this$0:Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onTimeout$1;->this$0:Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;

    iput-wide p2, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onTimeout$1;->$time:J

    iput-object p4, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onTimeout$1;->$unit:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onTimeout$1;->$block:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onTimeout$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 97
    iget-object v0, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onTimeout$1;->this$0:Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl;->getInstance()Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;

    move-result-object v0

    iget-wide v1, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onTimeout$1;->$time:J

    iget-object v3, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onTimeout$1;->$unit:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lkotlinx/coroutines/experimental/selects/UnbiasedSelectBuilderImpl$onTimeout$1;->$block:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2, v3, v4}, Lkotlinx/coroutines/experimental/selects/SelectBuilderImpl;->onTimeout(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
