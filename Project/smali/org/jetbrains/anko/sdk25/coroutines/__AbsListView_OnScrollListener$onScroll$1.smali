.class final Lorg/jetbrains/anko/sdk25/coroutines/__AbsListView_OnScrollListener$onScroll$1;
.super Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;
.source "ListenersWithCoroutines.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jetbrains/anko/sdk25/coroutines/__AbsListView_OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/experimental/CoroutineScope;",
        "Lkotlin/coroutines/experimental/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/experimental/CoroutineScope;",
        "invoke",
        "(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# instance fields
.field final synthetic $firstVisibleItem:I

.field final synthetic $handler:Lkotlin/jvm/functions/Function6;

.field final synthetic $totalItemCount:I

.field final synthetic $view:Landroid/widget/AbsListView;

.field final synthetic $visibleItemCount:I

.field private p$:Lkotlinx/coroutines/experimental/CoroutineScope;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function6;Landroid/widget/AbsListView;IIILkotlin/coroutines/experimental/Continuation;)V
    .locals 0

    iput-object p1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__AbsListView_OnScrollListener$onScroll$1;->$handler:Lkotlin/jvm/functions/Function6;

    iput-object p2, p0, Lorg/jetbrains/anko/sdk25/coroutines/__AbsListView_OnScrollListener$onScroll$1;->$view:Landroid/widget/AbsListView;

    iput p3, p0, Lorg/jetbrains/anko/sdk25/coroutines/__AbsListView_OnScrollListener$onScroll$1;->$firstVisibleItem:I

    iput p4, p0, Lorg/jetbrains/anko/sdk25/coroutines/__AbsListView_OnScrollListener$onScroll$1;->$visibleItemCount:I

    iput p5, p0, Lorg/jetbrains/anko/sdk25/coroutines/__AbsListView_OnScrollListener$onScroll$1;->$totalItemCount:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;-><init>(ILkotlin/coroutines/experimental/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 0

    .line 488
    check-cast p1, Lkotlinx/coroutines/experimental/CoroutineScope;

    invoke-virtual {p0, p1, p2}, Lorg/jetbrains/anko/sdk25/coroutines/__AbsListView_OnScrollListener$onScroll$1;->create(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object p1

    return-object p1
.end method

.method public final create(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 8
    .param p1    # Lkotlinx/coroutines/experimental/CoroutineScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/coroutines/experimental/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/jetbrains/anko/sdk25/coroutines/__AbsListView_OnScrollListener$onScroll$1;

    iget-object v2, p0, Lorg/jetbrains/anko/sdk25/coroutines/__AbsListView_OnScrollListener$onScroll$1;->$handler:Lkotlin/jvm/functions/Function6;

    iget-object v3, p0, Lorg/jetbrains/anko/sdk25/coroutines/__AbsListView_OnScrollListener$onScroll$1;->$view:Landroid/widget/AbsListView;

    iget v4, p0, Lorg/jetbrains/anko/sdk25/coroutines/__AbsListView_OnScrollListener$onScroll$1;->$firstVisibleItem:I

    iget v5, p0, Lorg/jetbrains/anko/sdk25/coroutines/__AbsListView_OnScrollListener$onScroll$1;->$visibleItemCount:I

    iget v6, p0, Lorg/jetbrains/anko/sdk25/coroutines/__AbsListView_OnScrollListener$onScroll$1;->$totalItemCount:I

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/jetbrains/anko/sdk25/coroutines/__AbsListView_OnScrollListener$onScroll$1;-><init>(Lkotlin/jvm/functions/Function6;Landroid/widget/AbsListView;IIILkotlin/coroutines/experimental/Continuation;)V

    iput-object p1, v0, Lorg/jetbrains/anko/sdk25/coroutines/__AbsListView_OnScrollListener$onScroll$1;->p$:Lkotlinx/coroutines/experimental/CoroutineScope;

    return-object v0
.end method

.method public final doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    packed-switch v0, :pswitch_data_0

    .line 513
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 512
    :pswitch_0
    if-eqz p2, :cond_1

    throw p2

    :pswitch_1
    if-eqz p2, :cond_0

    throw p2

    :cond_0
    iget-object v2, p0, Lorg/jetbrains/anko/sdk25/coroutines/__AbsListView_OnScrollListener$onScroll$1;->p$:Lkotlinx/coroutines/experimental/CoroutineScope;

    iget-object v1, p0, Lorg/jetbrains/anko/sdk25/coroutines/__AbsListView_OnScrollListener$onScroll$1;->$handler:Lkotlin/jvm/functions/Function6;

    iget-object v3, p0, Lorg/jetbrains/anko/sdk25/coroutines/__AbsListView_OnScrollListener$onScroll$1;->$view:Landroid/widget/AbsListView;

    iget p2, p0, Lorg/jetbrains/anko/sdk25/coroutines/__AbsListView_OnScrollListener$onScroll$1;->$firstVisibleItem:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget p2, p0, Lorg/jetbrains/anko/sdk25/coroutines/__AbsListView_OnScrollListener$onScroll$1;->$visibleItemCount:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget p2, p0, Lorg/jetbrains/anko/sdk25/coroutines/__AbsListView_OnScrollListener$onScroll$1;->$totalItemCount:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 p2, 0x1

    iput p2, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    move-object v7, p0

    invoke-interface/range {v1 .. v7}, Lkotlin/jvm/functions/Function6;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p1, :cond_1

    return-object p1

    .line 513
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 488
    check-cast p1, Lkotlinx/coroutines/experimental/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/experimental/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/jetbrains/anko/sdk25/coroutines/__AbsListView_OnScrollListener$onScroll$1;->invoke(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lkotlinx/coroutines/experimental/CoroutineScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lorg/jetbrains/anko/sdk25/coroutines/__AbsListView_OnScrollListener$onScroll$1;->create(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    check-cast v0, Lorg/jetbrains/anko/sdk25/coroutines/__AbsListView_OnScrollListener$onScroll$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/jetbrains/anko/sdk25/coroutines/__AbsListView_OnScrollListener$onScroll$1;->doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
