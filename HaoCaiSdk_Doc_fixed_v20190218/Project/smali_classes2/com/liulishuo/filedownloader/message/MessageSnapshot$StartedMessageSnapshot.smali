.class public Lcom/liulishuo/filedownloader/message/MessageSnapshot$StartedMessageSnapshot;
.super Lcom/liulishuo/filedownloader/message/MessageSnapshot;
.source "MessageSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/message/MessageSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartedMessageSnapshot"
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 209
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;-><init>(I)V

    .line 210
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 213
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;-><init>(Landroid/os/Parcel;)V

    .line 214
    return-void
.end method


# virtual methods
.method public getStatus()B
    .locals 1

    .line 218
    const/4 v0, 0x6

    return v0
.end method
