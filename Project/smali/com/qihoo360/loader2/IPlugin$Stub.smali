.class public abstract Lcom/qihoo360/loader2/IPlugin$Stub;
.super Landroid/os/Binder;
.source "IPlugin.java"

# interfaces
.implements Lcom/qihoo360/loader2/IPlugin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/loader2/IPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/loader2/IPlugin$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qihoo360.loader2.IPlugin"

.field static final TRANSACTION_query:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.qihoo360.loader2.IPlugin"

    invoke-virtual {p0, p0, v0}, Lcom/qihoo360/loader2/IPlugin$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qihoo360/loader2/IPlugin;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "com.qihoo360.loader2.IPlugin"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qihoo360/loader2/IPlugin;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Lcom/qihoo360/loader2/IPlugin;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Lcom/qihoo360/loader2/IPlugin$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/qihoo360/loader2/IPlugin$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_0

    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 45
    :cond_0
    const-string v1, "com.qihoo360.loader2.IPlugin"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v0

    .line 50
    :cond_1
    const-string v1, "com.qihoo360.loader2.IPlugin"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/qihoo360/loader2/IPlugin$Stub;->query(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 54
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 56
    return v0
.end method
