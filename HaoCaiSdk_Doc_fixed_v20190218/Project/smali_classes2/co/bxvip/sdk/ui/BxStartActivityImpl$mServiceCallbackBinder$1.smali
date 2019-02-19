.class public final Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;
.super La/b/c/d/e/B$Stub;
.source "BxStartActivityImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/sdk/ui/BxStartActivityImpl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBxStartActivityImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BxStartActivityImpl.kt\nco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1\n+ 2 ContextUtils.kt\norg/jetbrains/anko/ContextUtilsKt\n*L\n1#1,348:1\n57#2:349\n*E\n*S KotlinDebug\n*F\n+ 1 BxStartActivityImpl.kt\nco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1\n*L\n199#1:349\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016J\u0012\u0010\u0008\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\n\u001a\u00020\u0004H\u0016J \u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0004H\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "co/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1",
        "La/b/c/d/e/B$Stub;",
        "(Lco/bxvip/sdk/ui/BxStartActivityImpl;)V",
        "e",
        "",
        "",
        "finishActivity",
        "refreshView",
        "showText",
        "message",
        "toMain",
        "toWeb",
        "title",
        "url",
        "flag",
        "",
        "toYourActivity",
        "host-sdk_release"
    }
    k = 0x1
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
    .param p1, "$outer"    # Lco/bxvip/sdk/ui/BxStartActivityImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-direct {p0}, La/b/c/d/e/B$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 186
    iget-object v0, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-virtual {v0}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->noNetworkJumpYourActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "no network123"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-virtual {v0}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->toYourMainActivity()V

    goto :goto_0

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 190
    :goto_0
    nop

    .line 191
    return-void
.end method

.method public finishActivity()V
    .locals 1

    .line 169
    iget-object v0, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-virtual {v0}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->finish()V

    .line 170
    return-void
.end method

.method public refreshView()V
    .locals 1

    .line 165
    iget-object v0, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-static {v0}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->access$iconVisRefresh(Lco/bxvip/sdk/ui/BxStartActivityImpl;)V

    .line 166
    return-void
.end method

.method public showText(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 173
    iget-object v0, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-virtual {v0}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->hideLoadingShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    if-eqz p1, :cond_2

    .line 175
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "\u8bf7\u7b49\u5f85\u5f00\u653e"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v3, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "\u8bf7\u7a0d\u5019\u91cd\u8bd5"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v4, v3, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    sget v1, Lco/bxvip/sdk/R$id;->z_z_mTvState:I

    invoke-virtual {v0, v1}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "mTvState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 176
    :cond_1
    :goto_0
    iget-object v0, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    sget v1, Lco/bxvip/sdk/R$id;->z_z_mTvState:I

    invoke-virtual {v0, v1}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "mTvState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    :cond_2
    :goto_1
    nop

    .line 182
    iget-object v0, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    sget v1, Lco/bxvip/sdk/R$id;->z_z_mTvState:I

    invoke-virtual {v0, v1}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "mTvState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method

.method public toMain()V
    .locals 5

    const/4 v0, 0x0

    .line 199
    .local v0, "$i$f$getCtx":I
    iget-object v1, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    .line 349
    .local v1, "$receiver$iv":Landroid/content/Context;
    nop

    .line 200
    .end local v0    # "$i$f$getCtx":I
    const-string v0, "co.bxvip.android.plugin.main"

    .line 201
    const-string v2, "d0dc9bcfe5e3d6dd9bcedbd1dfdcd6d19bddd9e2d4d6db9bdaced6db9be2d69bdaced6db9bbaced6dbaed0e1d6e3d6e1e6"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v3}, Lcom/qihoo360/replugin/sdk/utils/ConfKt;->dC$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-static {v0, v2}, Lcom/qihoo360/replugin/RePlugin;->createIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 199
    invoke-static {v1, v0}, Lcom/qihoo360/replugin/RePlugin;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 202
    .end local v1    # "$receiver$iv":Landroid/content/Context;
    .local v0, "startActivity":Z
    if-eqz v0, :cond_0

    .line 203
    iget-object v1, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-virtual {v1}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->finish()V

    goto :goto_0

    .line 205
    :cond_0
    const-string v1, "\u8fdb\u5165app\u5931\u8d25\uff01"

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 206
    :goto_0
    nop

    .line 207
    return-void
.end method

.method public toWeb(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "url"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "flag"    # Z

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-static {v0, p1, p2, p3}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->access$toMainWeb(Lco/bxvip/sdk/ui/BxStartActivityImpl;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 195
    return-void
.end method

.method public toYourActivity()V
    .locals 1

    .line 210
    iget-object v0, p0, Lco/bxvip/sdk/ui/BxStartActivityImpl$mServiceCallbackBinder$1;->this$0:Lco/bxvip/sdk/ui/BxStartActivityImpl;

    invoke-virtual {v0}, Lco/bxvip/sdk/ui/BxStartActivityImpl;->toYourMainActivity()V

    .line 211
    return-void
.end method
