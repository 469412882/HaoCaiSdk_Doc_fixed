.class final Lcom/liulishuo/filedownloader/download/CustomComponentHolder$LazyLoader;
.super Ljava/lang/Object;
.source "CustomComponentHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/download/CustomComponentHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyLoader"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/liulishuo/filedownloader/download/CustomComponentHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;-><init>()V

    sput-object v0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder$LazyLoader;->INSTANCE:Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;
    .locals 1

    .line 45
    sget-object v0, Lcom/liulishuo/filedownloader/download/CustomComponentHolder$LazyLoader;->INSTANCE:Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    return-object v0
.end method
