.class Lcom/qihoo360/loader2/PmHostSvc$1;
.super Ljava/lang/Object;
.source "PmHostSvc.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qihoo360/loader2/PmHostSvc;->syncUninstalledPluginInfo2All(Lcom/qihoo360/replugin/model/PluginInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qihoo360/loader2/PmHostSvc;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/qihoo360/loader2/PmHostSvc;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qihoo360/loader2/PmHostSvc;

    .line 408
    iput-object p1, p0, Lcom/qihoo360/loader2/PmHostSvc$1;->this$0:Lcom/qihoo360/loader2/PmHostSvc;

    iput-object p2, p0, Lcom/qihoo360/loader2/PmHostSvc$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 411
    invoke-static {}, Lcom/qihoo360/replugin/RePluginInternal;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/qihoo360/loader2/PmHostSvc$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/base/IPC;->sendLocalBroadcast2All(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 412
    return-void
.end method
