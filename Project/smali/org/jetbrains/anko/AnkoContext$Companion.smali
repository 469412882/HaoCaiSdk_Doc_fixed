.class public final Lorg/jetbrains/anko/AnkoContext$Companion;
.super Ljava/lang/Object;
.source "AnkoContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jetbrains/anko/AnkoContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J1\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u0002H\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u001e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ#\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0008\u0008\u0001\u0010\u0005*\u00020\r2\u0006\u0010\u0008\u001a\u0002H\u0005\u00a2\u0006\u0002\u0010\u000eJ1\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u0002H\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u001e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/jetbrains/anko/AnkoContext$Companion;",
        "",
        "()V",
        "create",
        "Lorg/jetbrains/anko/AnkoContext;",
        "T",
        "ctx",
        "Landroid/content/Context;",
        "owner",
        "setContentView",
        "",
        "(Landroid/content/Context;Ljava/lang/Object;Z)Lorg/jetbrains/anko/AnkoContext;",
        "createDelegate",
        "Landroid/view/ViewGroup;",
        "(Landroid/view/ViewGroup;)Lorg/jetbrains/anko/AnkoContext;",
        "createReusable",
        "commons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 46
    invoke-direct {p0}, Lorg/jetbrains/anko/AnkoContext$Companion;-><init>()V

    return-void
.end method

.method public static bridge synthetic create$default(Lorg/jetbrains/anko/AnkoContext$Companion;Landroid/content/Context;Ljava/lang/Object;ZILjava/lang/Object;)Lorg/jetbrains/anko/AnkoContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 53
    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/jetbrains/anko/AnkoContext$Companion;->create(Landroid/content/Context;Ljava/lang/Object;Z)Lorg/jetbrains/anko/AnkoContext;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic create$default(Lorg/jetbrains/anko/AnkoContext$Companion;Landroid/content/Context;ZILjava/lang/Object;)Lorg/jetbrains/anko/AnkoContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 47
    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jetbrains/anko/AnkoContext$Companion;->create(Landroid/content/Context;Z)Lorg/jetbrains/anko/AnkoContext;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic createReusable$default(Lorg/jetbrains/anko/AnkoContext$Companion;Landroid/content/Context;Ljava/lang/Object;ZILjava/lang/Object;)Lorg/jetbrains/anko/AnkoContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 56
    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/jetbrains/anko/AnkoContext$Companion;->createReusable(Landroid/content/Context;Ljava/lang/Object;Z)Lorg/jetbrains/anko/AnkoContext;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic createReusable$default(Lorg/jetbrains/anko/AnkoContext$Companion;Landroid/content/Context;ZILjava/lang/Object;)Lorg/jetbrains/anko/AnkoContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 50
    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jetbrains/anko/AnkoContext$Companion;->createReusable(Landroid/content/Context;Z)Lorg/jetbrains/anko/AnkoContext;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Landroid/content/Context;Ljava/lang/Object;Z)Lorg/jetbrains/anko/AnkoContext;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "owner"    # Ljava/lang/Object;
    .param p3, "setContentView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "TT;Z)",
            "Lorg/jetbrains/anko/AnkoContext<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lorg/jetbrains/anko/AnkoContextImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/jetbrains/anko/AnkoContextImpl;-><init>(Landroid/content/Context;Ljava/lang/Object;Z)V

    check-cast v0, Lorg/jetbrains/anko/AnkoContext;

    return-object v0
.end method

.method public final create(Landroid/content/Context;Z)Lorg/jetbrains/anko/AnkoContext;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "setContentView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Lorg/jetbrains/anko/AnkoContext<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lorg/jetbrains/anko/AnkoContextImpl;

    invoke-direct {v0, p1, p1, p2}, Lorg/jetbrains/anko/AnkoContextImpl;-><init>(Landroid/content/Context;Ljava/lang/Object;Z)V

    check-cast v0, Lorg/jetbrains/anko/AnkoContext;

    return-object v0
.end method

.method public final createDelegate(Landroid/view/ViewGroup;)Lorg/jetbrains/anko/AnkoContext;
    .locals 1
    .param p1, "owner"    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ">(TT;)",
            "Lorg/jetbrains/anko/AnkoContext<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lorg/jetbrains/anko/DelegatingAnkoContext;

    invoke-direct {v0, p1}, Lorg/jetbrains/anko/DelegatingAnkoContext;-><init>(Landroid/view/ViewGroup;)V

    check-cast v0, Lorg/jetbrains/anko/AnkoContext;

    return-object v0
.end method

.method public final createReusable(Landroid/content/Context;Ljava/lang/Object;Z)Lorg/jetbrains/anko/AnkoContext;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "owner"    # Ljava/lang/Object;
    .param p3, "setContentView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "TT;Z)",
            "Lorg/jetbrains/anko/AnkoContext<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lorg/jetbrains/anko/ReusableAnkoContext;

    invoke-direct {v0, p1, p2, p3}, Lorg/jetbrains/anko/ReusableAnkoContext;-><init>(Landroid/content/Context;Ljava/lang/Object;Z)V

    check-cast v0, Lorg/jetbrains/anko/AnkoContext;

    return-object v0
.end method

.method public final createReusable(Landroid/content/Context;Z)Lorg/jetbrains/anko/AnkoContext;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "setContentView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Lorg/jetbrains/anko/AnkoContext<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lorg/jetbrains/anko/ReusableAnkoContext;

    invoke-direct {v0, p1, p1, p2}, Lorg/jetbrains/anko/ReusableAnkoContext;-><init>(Landroid/content/Context;Ljava/lang/Object;Z)V

    check-cast v0, Lorg/jetbrains/anko/AnkoContext;

    return-object v0
.end method