.class public abstract Lcom/liulishuo/filedownloader/FileDownloadConnectListener;
.super Lcom/liulishuo/filedownloader/event/IDownloadListener;
.source "FileDownloadConnectListener.java"


# instance fields
.field private mConnectStatus:Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/event/IDownloadListener;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public callback(Lcom/liulishuo/filedownloader/event/IDownloadEvent;)Z
    .locals 3
    .param p1, "event"    # Lcom/liulishuo/filedownloader/event/IDownloadEvent;

    .line 37
    instance-of v0, p1, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent;

    if-eqz v0, :cond_1

    .line 38
    move-object v0, p1

    check-cast v0, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent;

    .line 40
    .local v0, "connectChangedEvent":Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent;
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent;->getStatus()Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadConnectListener;->mConnectStatus:Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    .line 42
    iget-object v1, p0, Lcom/liulishuo/filedownloader/FileDownloadConnectListener;->mConnectStatus:Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    sget-object v2, Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->connected:Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    if-ne v1, v2, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadConnectListener;->connected()V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/FileDownloadConnectListener;->disconnected()V

    .line 48
    .end local v0    # "connectChangedEvent":Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract connected()V
.end method

.method public abstract disconnected()V
.end method

.method public getConnectStatus()Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/liulishuo/filedownloader/FileDownloadConnectListener;->mConnectStatus:Lcom/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    return-object v0
.end method
