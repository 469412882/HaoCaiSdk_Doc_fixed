.class final Lorg/jetbrains/anko/sdk25/coroutines/Sdk25CoroutinesListenersWithCoroutinesKt$onTimeChanged$1;
.super Ljava/lang/Object;
.source "ListenersWithCoroutines.kt"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jetbrains/anko/sdk25/coroutines/Sdk25CoroutinesListenersWithCoroutinesKt;->onTimeChanged(Landroid/widget/TimePicker;Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/jvm/functions/Function5;)V
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
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "view",
        "Landroid/widget/TimePicker;",
        "kotlin.jvm.PlatformType",
        "hourOfDay",
        "",
        "minute",
        "onTimeChanged"
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

.field final synthetic $handler:Lkotlin/jvm/functions/Function5;


# direct methods
.method constructor <init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/jvm/functions/Function5;)V
    .locals 0

    iput-object p1, p0, Lorg/jetbrains/anko/sdk25/coroutines/Sdk25CoroutinesListenersWithCoroutinesKt$onTimeChanged$1;->$context:Lkotlin/coroutines/experimental/CoroutineContext;

    iput-object p2, p0, Lorg/jetbrains/anko/sdk25/coroutines/Sdk25CoroutinesListenersWithCoroutinesKt$onTimeChanged$1;->$handler:Lkotlin/jvm/functions/Function5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 8
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .line 1016
    iget-object v0, p0, Lorg/jetbrains/anko/sdk25/coroutines/Sdk25CoroutinesListenersWithCoroutinesKt$onTimeChanged$1;->$context:Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v7, Lorg/jetbrains/anko/sdk25/coroutines/Sdk25CoroutinesListenersWithCoroutinesKt$onTimeChanged$1$1;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/jetbrains/anko/sdk25/coroutines/Sdk25CoroutinesListenersWithCoroutinesKt$onTimeChanged$1$1;-><init>(Lorg/jetbrains/anko/sdk25/coroutines/Sdk25CoroutinesListenersWithCoroutinesKt$onTimeChanged$1;Landroid/widget/TimePicker;IILkotlin/coroutines/experimental/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v7, v2, v1}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 1018
    nop

    .line 1019
    return-void
.end method
