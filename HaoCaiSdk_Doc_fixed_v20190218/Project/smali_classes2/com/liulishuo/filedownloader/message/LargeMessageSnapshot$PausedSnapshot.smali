.class public Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PausedSnapshot;
.super Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PendingMessageSnapshot;
.source "LargeMessageSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PausedSnapshot"
.end annotation


# direct methods
.method constructor <init>(IJJ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "sofarBytes"    # J
    .param p4, "totalBytes"    # J

    .line 386
    invoke-direct/range {p0 .. p5}, Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PendingMessageSnapshot;-><init>(IJJ)V

    .line 387
    return-void
.end method


# virtual methods
.method public getStatus()B
    .locals 1

    .line 391
    const/4 v0, -0x2

    return v0
.end method
