.class public abstract Lcom/liulishuo/filedownloader/FileDownloadListener;
.super Ljava/lang/Object;
.source "FileDownloadListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "priority"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "not handle priority any more"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected blockComplete(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 120
    return-void
.end method

.method protected abstract completed(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
.end method

.method protected connected(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/String;ZII)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .param p2, "etag"    # Ljava/lang/String;
    .param p3, "isContinue"    # Z
    .param p4, "soFarBytes"    # I
    .param p5, "totalBytes"    # I

    .line 93
    return-void
.end method

.method protected abstract error(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/Throwable;)V
.end method

.method protected isInvalid()Z
    .locals 1

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract paused(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
.end method

.method protected abstract pending(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
.end method

.method protected abstract progress(Lcom/liulishuo/filedownloader/BaseDownloadTask;II)V
.end method

.method protected retry(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/Throwable;II)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;
    .param p2, "ex"    # Ljava/lang/Throwable;
    .param p3, "retryingTimes"    # I
    .param p4, "soFarBytes"    # I

    .line 134
    return-void
.end method

.method protected started(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
    .locals 0
    .param p1, "task"    # Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 78
    return-void
.end method

.method protected abstract warn(Lcom/liulishuo/filedownloader/BaseDownloadTask;)V
.end method
