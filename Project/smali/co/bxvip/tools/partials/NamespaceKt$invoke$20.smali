.class final Lco/bxvip/tools/partials/NamespaceKt$invoke$20;
.super Lkotlin/jvm/internal/Lambda;
.source "namespace.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/tools/partials/NamespaceKt;->invoke(Lkotlin/jvm/functions/Function6;Lco/bxvip/tools/partials/Partial;Lco/bxvip/tools/partials/Partial;Lco/bxvip/tools/partials/Partial;Lco/bxvip/tools/partials/Partial;Lco/bxvip/tools/partials/Partial;Ljava/lang/Object;)Lkotlin/jvm/functions/Function5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function5<",
        "TP1;TP2;TP3;TP4;TP5;TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0004\n\u0002\u0008\u000f\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003\"\u0004\u0008\u0002\u0010\u0004\"\u0004\u0008\u0003\u0010\u0005\"\u0004\u0008\u0004\u0010\u0006\"\u0004\u0008\u0005\u0010\u0007\"\u0004\u0008\u0006\u0010\u00012\u0006\u0010\u0008\u001a\u0002H\u00022\u0006\u0010\t\u001a\u0002H\u00032\u0006\u0010\n\u001a\u0002H\u00042\u0006\u0010\u000b\u001a\u0002H\u00052\u0006\u0010\u000c\u001a\u0002H\u0006H\n\u00a2\u0006\u0004\u0008\r\u0010\u000e"
    }
    d2 = {
        "<anonymous>",
        "R",
        "P1",
        "P2",
        "P3",
        "P4",
        "P5",
        "P6",
        "p1",
        "p2",
        "p3",
        "p4",
        "p5",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $p6:Ljava/lang/Object;

.field final synthetic receiver$0:Lkotlin/jvm/functions/Function6;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function6;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lco/bxvip/tools/partials/NamespaceKt$invoke$20;->receiver$0:Lkotlin/jvm/functions/Function6;

    iput-object p2, p0, Lco/bxvip/tools/partials/NamespaceKt$invoke$20;->$p6:Ljava/lang/Object;

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;
    .param p5, "p5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP1;TP2;TP3;TP4;TP5;)TR;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lco/bxvip/tools/partials/NamespaceKt$invoke$20;->receiver$0:Lkotlin/jvm/functions/Function6;

    iget-object v6, p0, Lco/bxvip/tools/partials/NamespaceKt$invoke$20;->$p6:Ljava/lang/Object;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lkotlin/jvm/functions/Function6;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
