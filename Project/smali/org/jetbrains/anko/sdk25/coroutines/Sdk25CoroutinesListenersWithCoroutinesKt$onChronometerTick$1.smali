.class final Lorg/jetbrains/anko/sdk25/coroutines/Sdk25CoroutinesListenersWithCoroutinesKt$onChronometerTick$1;
.super Ljava/lang/Object;
.source "ListenersWithCoroutines.kt"

# interfaces
.implements Landroid/widget/Chronometer$OnChronometerTickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jetbrains/anko/sdk25/coroutines/Sdk25CoroutinesListenersWithCoroutinesKt;->onChronometerTick(Landroid/widget/Chronometer;Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/jvm/functions/Function3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "chronometer",
        "Landroid/widget/Chronometer;",
        "kotlin.jvm.PlatformType",
        "onChronometerTick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# instance fields
.field final synthetic $context:Lkotlin/coroutines/experimental/CoroutineContext;

.field final synthetic $handler:Lkotlin/jvm/functions/Function3;


# direct methods
.method constructor <init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    iput-object p1, p0, Lorg/jetbrains/anko/sdk25/coroutines/Sdk25CoroutinesListenersWithCoroutinesKt$onChronometerTick$1;->$context:Lkotlin/coroutines/experimental/CoroutineContext;

    iput-object p2, p0, Lorg/jetbrains/anko/sdk25/coroutines/Sdk25CoroutinesListenersWithCoroutinesKt$onChronometerTick$1;->$handler:Lkotlin/jvm/functions/Function3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChronometerTick(Landroid/widget/Chronometer;)V
    .locals 4
    .param p1, "chronometer"    # Landroid/widget/Chronometer;

    .line 627
    iget-object v0, p0, Lorg/jetbrains/anko/sdk25/coroutines/Sdk25CoroutinesListenersWithCoroutinesKt$onChronometerTick$1;->$context:Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v1, Lorg/jetbrains/anko/sdk25/coroutines/Sdk25CoroutinesListenersWithCoroutinesKt$onChronometerTick$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lorg/jetbrains/anko/sdk25/coroutines/Sdk25CoroutinesListenersWithCoroutinesKt$onChronometerTick$1$1;-><init>(Lorg/jetbrains/anko/sdk25/coroutines/Sdk25CoroutinesListenersWithCoroutinesKt$onChronometerTick$1;Landroid/widget/Chronometer;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v2}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 629
    nop

    .line 630
    return-void
.end method
