.class public Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard$FileDownloadServiceCallback;
.super Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback$Stub;
.source "FileDownloadServiceUIGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/FileDownloadServiceUIGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FileDownloadServiceCallback"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/i/IFileDownloadIPCCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 1
    .param p1, "snapshot"    # Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    invoke-static {}, Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow;->getImpl()Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshotFlow;->inflow(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    .line 79
    return-void
.end method
