.class public Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;
.super Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;
.source "SmallMessageSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompletedSnapshot"
.end annotation


# instance fields
.field private final reusedDownloadedFile:Z

.field private final totalBytes:I


# direct methods
.method constructor <init>(IZI)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "reusedDownloadedFile"    # Z
    .param p3, "totalBytes"    # I

    .line 215
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;-><init>(I)V

    .line 216
    iput-boolean p2, p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;->reusedDownloadedFile:Z

    .line 217
    iput p3, p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;->totalBytes:I

    .line 218
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 233
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;-><init>(Landroid/os/Parcel;)V

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;->reusedDownloadedFile:Z

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;->totalBytes:I

    .line 236
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public getSmallTotalBytes()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;->totalBytes:I

    return v0
.end method

.method public getStatus()B
    .locals 1

    .line 240
    const/4 v0, -0x3

    return v0
.end method

.method public isReusedDownloadedFile()Z
    .locals 1

    .line 250
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;->reusedDownloadedFile:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 227
    invoke-super {p0, p1, p2}, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot;->writeToParcel(Landroid/os/Parcel;I)V

    .line 228
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;->reusedDownloadedFile:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 229
    iget v0, p0, Lcom/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot;->totalBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    return-void
.end method
