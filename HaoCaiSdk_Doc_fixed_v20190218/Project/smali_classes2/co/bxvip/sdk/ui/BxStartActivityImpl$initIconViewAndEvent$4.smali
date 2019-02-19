.class final Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$4;
.super Ljava/lang/Object;
.source "BxStartActivityImpl.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/sdk/ui/BxStartActivityImpl;->initIconViewAndEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBxStartActivityImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BxStartActivityImpl.kt\nco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$4\n+ 2 ContextUtils.kt\norg/jetbrains/anko/ContextUtilsKt\n*L\n1#1,348:1\n57#2:349\n*E\n*S KotlinDebug\n*F\n+ 1 BxStartActivityImpl.kt\nco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$4\n*L\n322#1:349\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;


# direct methods
.method constructor <init>(Lco/bxvip/sdk/ui/BxStartActivityImpl;)V
    .locals 0

    iput-object p1, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$4;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "it"    # Landroid/view/View;

    const/4 v0, 0x0

    .line 322
    .local v0, "$i$f$getCtx":I
    iget-object v1, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$4;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    .line 349
    .local v1, "$receiver$iv":Landroid/content/Context;
    nop

    .line 323
    .end local v0    # "$i$f$getCtx":I
    const-string v0, "a.b.c.d.e.speed"

    .line 324
    const-string v2, "ce9bcf9bd09bd19bd29be0ddd2d2d19bc0c1aed0e1"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v3}, Lcom/qihoo360/replugin/sdk/utils/ConfKt;->dC$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 323
    invoke-static {v0, v2}, Lcom/qihoo360/replugin/RePlugin;->createIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 322
    invoke-static {v1, v0}, Lcom/qihoo360/replugin/RePlugin;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 325
    .end local v1    # "$receiver$iv":Landroid/content/Context;
    .local v0, "startActivity":Z
    if-eqz v0, :cond_0

    .line 326
    iget-object v1, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$initIconViewAndEvent$4;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-virtual {v1}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->finish()V

    goto :goto_0

    .line 328
    :cond_0
    const-string v1, "\u8fdb\u5165\u6d4b\u901f\u754c\u9762\u5931\u8d25\uff01"

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 329
    .end local v0    # "startActivity":Z
    :goto_0
    nop

    .line 330
    return-void
.end method
